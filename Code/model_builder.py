import os
import datetime

import IPython
import IPython.display
import matplotlib as mpld
import matplotlib.pyplot as plt
import numpy as np
import pandas as pd
import seaborn as sns
import tensorflow as tf

all_intersections = [".".join(f.split(".")[:-1]) for f in os.listdir(r"C:\Users\Moritz Mueller\Desktop\Verkehr\data")]

for intersection in all_intersections:

    try:
        data = pd.read_csv(r"C:\Users\Moritz Mueller\Desktop\Verkehr\data" +
                               "\\" + intersection + r".csv", delimiter=";")
    except pd.errors.ParserError as e:
        continue
    except pd.errors.EmptyDataError as e:
        continue

    #data.rename(columns={'01.06.2020 00:00': 'datetime'}, inplace=True)
    data.columns.values[0] = "datetime"
    data['datetime'] = pd.to_datetime(
                data['datetime'], format='%d.%m.%Y %H:%M')    

    data = data.set_index('datetime')
    grouped_data = data.groupby(data.columns.str.extract(
                "Bel_D(\d)\d", expand=False), axis=1).sum()

    grouped_data.columns = ["Bel_D" + col + "x" for col in grouped_data.columns]
    grouped_data = grouped_data.reset_index().rename(columns={'index': 'datetime'})
    time_data = grouped_data.pop('datetime')


    n = len(grouped_data)
    train_df = grouped_data[0:int(n*0.7)]
    val_df = grouped_data[int(n*0.7):int(n*0.9)]
    test_df = grouped_data[int(n*0.9):]
    num_features = grouped_data.shape[1]

    train_mean = train_df.mean()
    train_std = train_df.std()

    train_df = (train_df - train_mean) / train_std
    val_df = (val_df - train_mean) / train_std
    test_df = (test_df - train_mean) / train_std

    class WindowGenerator():
        def __init__(self, input_width, label_width, shift,
                    train_df=train_df, val_df=val_df, test_df=test_df,
                    label_columns=None):
            # Store the raw data.
            self.train_df = train_df
            self.val_df = val_df
            self.test_df = test_df

            # Work out the label column indices.
            self.label_columns = label_columns
            if label_columns is not None:
                self.label_columns_indices = {name: i for i, name in
                                            enumerate(label_columns)}
            self.column_indices = {name: i for i, name in
                                enumerate(train_df.columns)}

            # Work out the window parameters.
            self.input_width = input_width
            self.label_width = label_width
            self.shift = shift

            self.total_window_size = input_width + shift

            self.input_slice = slice(0, input_width)
            self.input_indices = np.arange(self.total_window_size)[self.input_slice]

            self.label_start = self.total_window_size - self.label_width
            self.labels_slice = slice(self.label_start, None)
            self.label_indices = np.arange(self.total_window_size)[self.labels_slice]

        def __repr__(self):
            return '\n'.join([
                f'Total window size: {self.total_window_size}',
                f'Input indices: {self.input_indices}',
                f'Label indices: {self.label_indices}',
                f'Label column name(s): {self.label_columns}'])
    
    def split_window(self, features):
        inputs = features[:, self.input_slice, :]
        labels = features[:, self.labels_slice, :]
        if self.label_columns is not None:
            labels = tf.stack(
                [labels[:, :, self.column_indices[name]] for name in self.label_columns],
                axis=-1)

        # Slicing doesn't preserve static shape information, so set the shapes
        # manually. This way the `tf.data.Datasets` are easier to inspect.
        inputs.set_shape([None, self.input_width, None])
        labels.set_shape([None, self.label_width, None])

        return inputs, labels

    WindowGenerator.split_window = split_window

    def make_dataset(self, data):
        data = np.array(data, dtype=np.float32)
        ds = tf.keras.utils.timeseries_dataset_from_array(
            data=data,
            targets=None,
            sequence_length=self.total_window_size,
            sequence_stride=1,
            shuffle=True,
            batch_size=32,)

        ds = ds.map(self.split_window)

        return ds

    WindowGenerator.make_dataset = make_dataset

    @property
    def train(self):
        return self.make_dataset(self.train_df)

    @property
    def val(self):
        return self.make_dataset(self.val_df)

    @property
    def test(self):
        return self.make_dataset(self.test_df)

    @property
    def example(self):
        """Get and cache an example batch of `inputs, labels` for plotting."""
        result = getattr(self, '_example', None)
        if result is None:
            # No example batch was found, so get one from the `.train` dataset
            result = next(iter(self.train))
            # And cache it for next time
            self._example = result
        return result

    WindowGenerator.train = train
    WindowGenerator.val = val
    WindowGenerator.test = test
    WindowGenerator.example = example

    OUT_STEPS = 24
    multi_window = WindowGenerator(input_width=24,
                               label_width=OUT_STEPS,
                               shift=OUT_STEPS)

    MAX_EPOCHS = 40

    def compile_and_fit(model, window, patience=2):
        early_stopping = tf.keras.callbacks.EarlyStopping(monitor='val_loss',
                                                    patience=patience,
                                                    mode='min')

        model.compile(loss=tf.keras.losses.MeanSquaredError(),
                optimizer=tf.keras.optimizers.Adam(),
                metrics=[tf.keras.metrics.MeanAbsoluteError()])

        history = model.fit(window.train, epochs=MAX_EPOCHS,
                      validation_data=window.val,
                      callbacks=[early_stopping])
        return history
    
    multi_lstm_model = tf.keras.Sequential([
    # Shape [batch, time, features] => [batch, lstm_units].
    # Adding more `lstm_units` just overfits more quickly.
    tf.keras.layers.LSTM(32, return_sequences=False),
    # Shape => [batch, out_steps*features].
    tf.keras.layers.Dense(OUT_STEPS*num_features,
                          kernel_initializer=tf.initializers.zeros()),
    # Shape => [batch, out_steps, features].
    tf.keras.layers.Reshape([OUT_STEPS, num_features])
    ])

    history = compile_and_fit(multi_lstm_model, multi_window)

    IPython.display.clear_output()

    multi_lstm_model.save("./Verkehr/Models/" + intersection)

    extra_data = pd.DataFrame(data=[[train_std, train_mean]], columns=["STD", "MEAN"])
    extra_data.to_csv("./Verkehr/extra_data/" + intersection + ".csv")

    print("-------------------------")
    print("FINISHED: " + intersection)
    print("-------------------------")
    print("FINISHED:" + str(((all_intersections.index(intersection) + 1) / len(all_intersections)) * 100) + "%")
    print("-------------------------")
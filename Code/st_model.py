import streamlit as st 
import os
import keras
import pandas as pd
import numpy as np

def app():

    st.write("""# Model""")
    with st.expander("See explanation"):
        st.text("""
        The Form below offers a dropdown menu to select a Intersection. 
        The result is a line chart which shows the predicted traffic for the next 24 hours for each part of the intersection.
        Below the graph the average traffic of the predicted data is compared to the current 24 hours.
        """)

    intersection = [".".join(f.split(".")[:-1])
                        for f in os.listdir(r".\data")]

    form = st.form(key="input_data")
    with form:
        option = st.selectbox(
            "Choose intersection", intersection) 

        submitted = st.form_submit_button(label="Select")

    if submitted:

        try:
            with st.spinner("Model is loaded"):
                model = keras.models.load_model("./Models/" + option + "/")
                normalize_values = pd.read_csv("./extra_data/" + option + ".csv")

                std = normalize_values["STD"].values[0].split('\n')

                std_frame = pd.DataFrame(columns=["index", "value"])
                for x in std:
                    split = x.split(' ')
                    if(not split[0].startswith("Bel")):
                        continue
                    std_frame = std_frame.append({"index": split[0], "value": split[-1]}, ignore_index=True)

                std_frame = std_frame.set_index("index")
                std = std_frame.squeeze().astype(float)

                mean = normalize_values["MEAN"].values[0].split('\n')

                mean_frame = pd.DataFrame(columns=["index", "value"])
                for x in mean:
                    split = x.split(' ')
                    if(not split[0].startswith("Bel")):
                        continue
                    mean_frame = mean_frame.append({"index": split[0], "value": split[-1]}, ignore_index=True)

                mean_frame = mean_frame.set_index("index")
                mean = mean_frame.squeeze().astype(float)

                try:
                    data = pd.read_csv(r".\data" +
                                    "\\" + option + r".csv", delimiter=";")
                except pd.errors.ParserError as e:
                    pass
                except pd.errors.EmptyDataError as e:
                    pass

                data.columns.values[0] = "datetime"
                data['datetime'] = pd.to_datetime(
                            data['datetime'], format='%d.%m.%Y %H:%M')    

                data = data.set_index('datetime')
                grouped_data = data.groupby(data.columns.str.extract(
                            "Bel_D(\d)\d", expand=False), axis=1).sum()

                grouped_data.columns = ["Bel_D" + col + "x" for col in grouped_data.columns]
                grouped_data = grouped_data.reset_index().rename(columns={'index': 'datetime'})
                time_data = grouped_data.pop('datetime')

                predict_data = grouped_data.tail(24)
                predict_data = (predict_data - mean) / std

                y_hat = pd.DataFrame(model.predict(np.array([predict_data]))[0])
                y_hat.columns = ["Bel_D" + str(col + 1) + "x" for col in y_hat.columns]
                y_hat_rescaled = y_hat * std + mean

            st.write("""### Predicted traffic for next 24 hours""")
            st.write("""#### Start Time""")
            st.metric(label="Year-Month-Day Hour-Minute-Second", value=str(time_data.iloc[-1]))
            st.line_chart(y_hat_rescaled)

            st.markdown("---")

            grouped_data["datetime"] = time_data

            avg_y_hat = y_hat_rescaled.mean().mean()
            avg_tail24 = grouped_data.tail(24).mean().mean()

            change = (avg_y_hat - avg_tail24)/ avg_tail24 * 100

            col1, col2 = st.columns(2)

            col1.write("""### Predicted Average Traffic for next the next 24 hours""")
            col1.metric(label="Average Traffic", value=int(round(avg_y_hat,0)))

            col2.write("""### Change to current 24 hours""")
            col2.metric(label="Change", value=int(round(avg_tail24,0)), delta=f"{round(change, 1)}%")


        except Exception as e:
            st.write("""# Model could not be loaded""")      
            st.write(e)      



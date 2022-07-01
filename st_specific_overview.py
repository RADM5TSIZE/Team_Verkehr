from tokenize import group
from idna import valid_contextj
import streamlit as st
import pandas as pd
import os
from datetime import date, datetime


def v_spacer(height, sb=False) -> None:
    for _ in range(height):
        if sb:
            st.sidebar.write('\n')
        else:
            st.write('\n')

def app():

    st.write("""# Title""")

    form = st.form(key="input_data")
    with form:
        intersection = [".".join(f.split(".")[:-1])
                        for f in os.listdir(r"C:\Users\Moritz Mueller\Desktop\Verkehr\data")]

        option = st.selectbox(
            "Choose intersection", intersection, key="option")  # , on_change=inters_select, key="inters"

        col1, col2, col3 = st.columns(3)

        with col1:
            date_input = st.date_input("Enter Date:", value=date(
                2020, 6, 1), min_value=date(2020, 6, 1), max_value=date(2022, 6, 1))

        with col2:
            time_input = st.selectbox("Enter Time:", options=["00:00",
                                                              "01:00",
                                                              "02:00",
                                                              "03:00",
                                                              "04:00",
                                                              "05:00",
                                                              "06:00",
                                                              "07:00",
                                                              "08:00",
                                                              "09:00",
                                                              "10:00",
                                                              "11:00",
                                                              "12:00",
                                                              "13:00",
                                                              "14:00",
                                                              "15:00",
                                                              "16:00",
                                                              "17:00",
                                                              "18:00",
                                                              "19:00",
                                                              "20:00",
                                                              "21:00",
                                                              "22:00",
                                                              "23:00"
                                                              ])

        with col3:
            granularity = st.radio(label="Choose Granularity", options=[
                                   "Single", "Grouped"])

        submitted = st.form_submit_button(label="Select")

    if submitted:
        data = pd.read_csv(r"C:\Users\Moritz Mueller\Desktop\Verkehr\data" +
                           "\\" + option + r".csv", delimiter=";")
        data.rename(columns={'01.06.2020 00:00': 'datetime'}, inplace=True)
        data['datetime'] = pd.to_datetime(
            data['datetime'], format='%d.%m.%Y %H:%M')
        data = data.set_index('datetime')

        # if granularity == "Single":
        #     specific_intersection = st.selectbox(
        #             label="Choose the part of Intersection", options=data.filter(like='Bel').columns)
        # elif granularity == "Grouped":
        #     grouped_data = data.groupby(data.columns.str.extract(
        #         "Bel_D(\d)\d", expand=False), axis=1).sum()
        #     grouped_data.columns = ["Bel_D" + col +
        #                             "x" for col in grouped_data.columns]
        #     grouped_data = grouped_data.reset_index()
        #     specific_intersection = st.selectbox(
        #         label="Choose the part of Intersection", options=grouped_data.filter(like='Bel').columns)
                
    

        # st.write(grouped_data)
        # st.write(data)

    form2 = st.form(key="input_data2")
    with form2:
        data = pd.read_csv(r"C:\Users\Moritz Mueller\Desktop\Verkehr\data" +
                        "\\" + st.session_state.option + r".csv", delimiter=";")
        data.rename(columns={'01.06.2020 00:00': 'datetime'}, inplace=True)
        data['datetime'] = pd.to_datetime(
            data['datetime'], format='%d.%m.%Y %H:%M')    

        if granularity == "Single":
            specific_intersection = st.selectbox(
                label="Choose the part of Intersection", options=data.filter(like='Bel').columns, )
        elif granularity == "Grouped":
            data = data.set_index('datetime')
            grouped_data = data.groupby(data.columns.str.extract(
                "Bel_D(\d)\d", expand=False), axis=1).sum()
            grouped_data.columns = ["Bel_D" + col +
                                    "x" for col in grouped_data.columns]
            grouped_data = grouped_data.reset_index()
            specific_intersection = st.selectbox(
                label="Choose the part of Intersection", options=grouped_data.filter(like='Bel').columns)

        submitted2 = st.form_submit_button(label="Confirm")

    if submitted2:
        st.write("""# finished""")
        #st.write(str(date_input) + "_" + time_input, "")
        if granularity == "Single":
            value = data[data["datetime"] == datetime.strptime(str(date_input) + time_input, r"%Y-%m-%d%H:%M")][specific_intersection].values[0]
            st.write(f"The traffic volume for the intersection on {date_input} at {time_input} is {value}")
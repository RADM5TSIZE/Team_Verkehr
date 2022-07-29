import streamlit as st
import pandas as pd
import os
from datetime import date, datetime, timedelta


def v_spacer(height, sb=False) -> None:
    for _ in range(height):
        if sb:
            st.sidebar.write('\n')
        else:
            st.write('\n')

def app():

    st.write("""# Title""")

    intersection = [".".join(f.split(".")[:-1])
                        for f in os.listdir(r".\data")]

    option = st.selectbox(
            "Choose intersection", intersection, key="option")  # , on_change=inters_select, key="inters"

    col1, col2 = st.columns(2)

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
    col3, col4 = st.columns(2)
    with col3:
        granularity = st.radio(label="Choose Granularity", options=[
                                "Single", "Grouped"])

    data = pd.read_csv(r".\data" +
                        "\\" + option + r".csv", delimiter=";")
    data.rename(columns={'01.06.2020 00:00': 'datetime'}, inplace=True)
    data['datetime'] = pd.to_datetime(
        data['datetime'], format='%d.%m.%Y %H:%M')

    with col4:
        if granularity == "Single":
            specific_intersection = st.selectbox(
                label="Choose the part of Intersection", options=data.filter(like='Bel').columns, )
        elif granularity == "Grouped":
            grouped_data = data.set_index('datetime')
            grouped_data = data.groupby(data.columns.str.extract(
                    "Bel_D(\d)\d", expand=False), axis=1).sum()
            grouped_data.columns = ["Bel_D" + col +
                                        "x" for col in grouped_data.columns]
            grouped_data = grouped_data.reset_index()
            specific_intersection = st.selectbox(
                label="Choose the part of Intersection", options=grouped_data.filter(like='Bel').columns)

    if st.button("Select"):
        st.write("""# Results""")
        if granularity == "Single":
            time_value = datetime.strptime(str(date_input) + time_input, r"%Y-%m-%d%H:%M")
            value = data[data["datetime"] == time_value][specific_intersection].values[0]
            st.write(f"The traffic volume for the intersection on {date_input} at {time_input} is {value}")
        elif granularity == "Grouped":
            data = data.set_index('datetime')
            grouped_data = data
            grouped_data = data.groupby(data.columns.str.extract(
                    "Bel_D(\d)\d", expand=False), axis=1).sum()
            grouped_data.columns = ["Bel_D" + col +
                                        "x" for col in grouped_data.columns]
            grouped_data = grouped_data.reset_index().rename(columns={'index': 'datetime'})


            time_value = datetime.strptime(str(date_input) + time_input, r"%Y-%m-%d%H:%M")
            value = grouped_data[grouped_data["datetime"] == time_value][specific_intersection].values[0]
            st.write(f"The traffic volume for the intersection on {date_input} at {time_input} is {value}")

            if not time_value <= datetime.strptime("2020-06-01_00:00", r"%Y-%m-%d_%H:%M"):
                last_value = grouped_data[grouped_data["datetime"] == time_value - timedelta(hours=1)][specific_intersection].values[0]
                increase_day = (last_value - value)/value * 100
                st.write(f"This is a change of {round(increase_day, 0)}% to the last hour.")

            if not time_value <= datetime.strptime("2020-06-08_00:00", r"%Y-%m-%d_%H:%M"):
                last_week_value = grouped_data[grouped_data["datetime"] == time_value - timedelta(weeks=1)][specific_intersection].values[0]
                increase_week = (last_week_value - value)/value * 100                
                st.write(f"And a change {round(increase_week, 0)} to last week.")



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

    st.write("""# Specific Overview""")
    with st.expander("See explanation"):

        st.text("""
        The Form below offers a dropdown menu to select a Intersection and inputs to specify date and time. Also the specific lightsignal / part of intersection needs to be specified
        The result is an overview of the traffic at the specified time

        Granularity: 
            Single - every lightsignal is selectable
            Grouped - part of intersection is selectable
            Full - groups full intersection and removes dropdown
        
        Date:
            Date Picker: fixed min 01.06.2020 - max 01.06.2022

        Intersection:
            Choose Intersection from dropdown

        Part of intersection:
            updates automatically
            specify part of intersection
     """)


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
            "Single", "Grouped", "Full"])

    try:
        data = pd.read_csv(r".\data" +
                           "\\" + option + r".csv", delimiter=";")
    except pd.errors.ParserError as e:
        st.write("""### Not Supported Intersection""")
        return
    except pd.errors.EmptyDataError as e:
        st.write("""### Not Supported Intersection""")
        return

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
            time_value = datetime.strptime(
                str(date_input) + time_input, r"%Y-%m-%d%H:%M")
            value = data[data["datetime"] ==
                         time_value][specific_intersection].values[0]


            col_Rgeneral1, col_Rgeneral2, col_Rgeneral3, filler = st.columns(4)
            col_Rgeneral1.write("""### Date""")
            col_Rgeneral1.metric(label="Year-Month-Day ", value=str(date_input))

            col_Rgeneral2.write("""### Time""")
            col_Rgeneral2.metric(label="Hour:Minute", value=str(time_input))

            col_Rgeneral3.write("""### Traffic""")
            col_Rgeneral3.metric(label="Amount of traffic", value=value)

            st.markdown("""---""")

            col_result1, col_result2, col_result3, col_result4 = st.columns(4)

            if not time_value <= datetime.strptime("2020-06-01_00:00", r"%Y-%m-%d_%H:%M"):
                last_value = data[data["datetime"] ==
                                          time_value - timedelta(hours=1)][specific_intersection].values[0]
                increase_hour = (value - last_value)/last_value * 100
                col_result1.write("""### Change to last hour: """)
                col_result1.metric(label="Last Hour", value=last_value, delta=f"{round(increase_hour, 1)}%")
            
            if not time_value <= datetime.strptime("2020-06-02_00:00", r"%Y-%m-%d_%H:%M"):
                last_day_value = data[data["datetime"] ==
                                               time_value - timedelta(days=1)][specific_intersection].values[0]
                increase_day = (value - last_day_value)/last_day_value * 100
                col_result2.write("""### Change to last day: """)
                col_result2.metric(label="Last Day", value=last_day_value, delta=f"{round(increase_day, 1)}%")

            if not time_value <= datetime.strptime("2020-06-08_00:00", r"%Y-%m-%d_%H:%M"):
                last_week_value = data[data["datetime"] ==
                                               time_value - timedelta(weeks=1)][specific_intersection].values[0]
                increase_week = (value - last_week_value)/last_week_value * 100
                col_result3.write("""### Change to last week: """)
                col_result3.metric(label="Last Week", value=last_week_value, delta=f"{round(increase_week, 1)}%")

            if not time_value <= datetime.strptime("2020-07-01_00:00", r"%Y-%m-%d_%H:%M"):
                last_30_value = data[data["datetime"] ==
                                               time_value - timedelta(days=30)][specific_intersection].values[0]
                increase_30 = (value - last_30_value)/last_30_value * 100
                col_result4.write("""### 30 day change: """)
                col_result4.metric(label="30 days", value=last_30_value, delta=f"{round(increase_30, 1)}%")

        elif granularity == "Grouped":
            data = data.set_index('datetime')
            grouped_data = data
            grouped_data = data.groupby(data.columns.str.extract(
                "Bel_D(\d)\d", expand=False), axis=1).sum()
            grouped_data.columns = ["Bel_D" + col +
                                    "x" for col in grouped_data.columns]
            grouped_data = grouped_data.reset_index().rename(
                columns={'index': 'datetime'})

            time_value = datetime.strptime(
                str(date_input) + time_input, r"%Y-%m-%d%H:%M")
            value = grouped_data[grouped_data["datetime"] ==
                                 time_value][specific_intersection].values[0]            
            
            col_Rgeneral1, col_Rgeneral2, col_Rgeneral3, filler = st.columns(4)
            col_Rgeneral1.write("""### Date""")
            col_Rgeneral1.metric(label="Year-Month-Day ", value=str(date_input))

            col_Rgeneral2.write("""### Time""")
            col_Rgeneral2.metric(label="Hour:Minute", value=str(time_input))

            col_Rgeneral3.write("""### Traffic""")
            col_Rgeneral3.metric(label="Amount of traffic", value=value)

            st.markdown("""---""")

            col_result1, col_result2, col_result3, col_result4 = st.columns(4)

            if not time_value <= datetime.strptime("2020-06-01_00:00", r"%Y-%m-%d_%H:%M"):
                last_value = grouped_data[grouped_data["datetime"] ==
                                          time_value - timedelta(hours=1)][specific_intersection].values[0]
                increase_hour = (value - last_value)/last_value * 100
                col_result1.write("""### Change to last hour: """)
                col_result1.metric(label="Last Hour", value=last_value, delta=f"{round(increase_hour, 1)}%")
            
            if not time_value <= datetime.strptime("2020-06-02_00:00", r"%Y-%m-%d_%H:%M"):
                last_day_value = grouped_data[grouped_data["datetime"] ==
                                               time_value - timedelta(days=1)][specific_intersection].values[0]
                increase_day = (value - last_day_value)/last_day_value * 100
                col_result2.write("""### Change to last day: """)
                col_result2.metric(label="Last Day", value=last_day_value, delta=f"{round(increase_day, 1)}%")

            if not time_value <= datetime.strptime("2020-06-08_00:00", r"%Y-%m-%d_%H:%M"):
                last_week_value = grouped_data[grouped_data["datetime"] ==
                                               time_value - timedelta(weeks=1)][specific_intersection].values[0]
                increase_week = (value - last_week_value)/last_week_value * 100
                col_result3.write("""### Change to last week: """)
                col_result3.metric(label="Last Week", value=last_week_value, delta=f"{round(increase_week, 1)}%")

            if not time_value <= datetime.strptime("2020-07-01_00:00", r"%Y-%m-%d_%H:%M"):
                last_30_value = grouped_data[grouped_data["datetime"] ==
                                               time_value - timedelta(days=30)][specific_intersection].values[0]
                increase_30 = (value - last_30_value)/last_30_value * 100
                col_result4.write("""### 30 day change: """)
                col_result4.metric(label="30 days", value=last_30_value, delta=f"{round(increase_30, 1)}%")
        

        elif granularity == "Full":
            data = data.set_index('datetime')
            full_data = data
            full_data = data.filter(like="Bel").sum(axis=1)
            full_data = full_data.reset_index().rename(
                columns={'index': 'datetime'})

            time_value = datetime.strptime(
                str(date_input) + time_input, r"%Y-%m-%d%H:%M")
            value = full_data[full_data["datetime"] == time_value][0].values[0]
            
            col_Rgeneral1, col_Rgeneral2, col_Rgeneral3, filler = st.columns(4)
            col_Rgeneral1.write("""### Date""")
            col_Rgeneral1.metric(label="Year-Month-Day ", value=str(date_input))

            col_Rgeneral2.write("""### Time""")
            col_Rgeneral2.metric(label="Hour:Minute", value=str(time_input))

            col_Rgeneral3.write("""### Traffic""")
            col_Rgeneral3.metric(label="Amount of traffic", value=value)

            st.markdown("""---""")

            col_result1, col_result2, col_result3, col_result4 = st.columns(4)

            if not time_value <= datetime.strptime("2020-06-01_00:00", r"%Y-%m-%d_%H:%M"):
                last_value = full_data[full_data["datetime"] ==
                                          time_value - timedelta(hours=1)][0].values[0]
                increase_hour = (value - last_value)/last_value * 100
                col_result1.write("""### Change to last hour: """)
                col_result1.metric(label="Last Hour", value=last_value, delta=f"{round(increase_hour, 1)}%")
            
            if not time_value <= datetime.strptime("2020-06-02_00:00", r"%Y-%m-%d_%H:%M"):
                last_day_value = full_data[full_data["datetime"] ==
                                               time_value - timedelta(days=1)][0].values[0]
                increase_day = (value - last_day_value)/last_day_value * 100
                col_result2.write("""### Change to last day: """)
                col_result2.metric(label="Last Day", value=last_day_value, delta=f"{round(increase_day, 1)}%")

            if not time_value <= datetime.strptime("2020-06-08_00:00", r"%Y-%m-%d_%H:%M"):
                last_week_value = full_data[full_data["datetime"] ==
                                               time_value - timedelta(weeks=1)][0].values[0]
                increase_week = (value - last_week_value)/last_week_value * 100
                col_result3.write("""### Change to last week: """)
                col_result3.metric(label="Last Week", value=last_week_value, delta=f"{round(increase_week, 1)}%")

            if not time_value <= datetime.strptime("2020-07-01_00:00", r"%Y-%m-%d_%H:%M"):
                last_30_value = full_data[full_data["datetime"] ==
                                               time_value - timedelta(days=30)][0].values[0]
                increase_30 = (value - last_30_value)/last_30_value * 100
                col_result4.write("""### 30 day change: """)
                col_result4.metric(label="30 days", value=last_30_value, delta=f"{round(increase_30, 1)}%")
            

import streamlit as st
import os
import pandas as pd 
import re
import math


def app():
    st.write("""# Title""")

    intersection = [".".join(f.split(".")[:-1])
                    for f in os.listdir(r"C:\Users\Moritz Mueller\Desktop\Verkehr\data")]

    form = st.form(key="input_data")

    with form:
        option = st.selectbox(
            "Choose intersection", intersection) 
        
        col1, col2, col3 = st.columns(3)
        with col1:
            granularity = st.radio(label="Choose Granularity",options=["Single Lightsignals", "Grouped Lightsignals", "Full Intersection"])
        
        with col2:
            design = st.radio(label="Choose Design", options=["Bar Chart", "Line Chart"])

        with col3:
            time_frame = st.radio(label="Choose Time Frame", options=["Yearly", "Monthly", "Hourly"])

        submitted = st.form_submit_button(label="Select")

    if submitted:

        try:
            data = pd.read_csv(r"C:\Users\Moritz Mueller\Desktop\Verkehr\data" +
                               "\\" + option + r".csv", delimiter=";")
        except pd.errors.ParserError as e:
            st.write("""### Not Supported Intersection""")
            return


        data = pd.read_csv(r"C:\Users\Moritz Mueller\Desktop\Verkehr\data" +
                               "\\" + option + r".csv", delimiter=";")
        data.rename(columns={'01.06.2020 00:00': 'datetime'}, inplace=True)
        data['datetime'] = pd.to_datetime(
            data['datetime'], format='%d.%m.%Y %H:%M')
        
        if granularity == "Grouped Lightsignals":
            data = data.set_index('datetime')

            grouped_data = data.groupby(data.columns.str.extract(
            "Bel_D(\d)\d", expand=False), axis=1).sum()

            grouped_data.columns = ["Bel_D" + col + "x" for col in grouped_data.columns]

            plot_data = grouped_data.reset_index()

            if time_frame == "Yearly":
                plot_data = plot_data.groupby(plot_data['datetime'].dt.year).mean()
            elif time_frame == "Monthly":
                plot_data = plot_data.groupby(plot_data['datetime'].dt.month).mean()
            elif time_frame == "Hourly":
                plot_data = plot_data.groupby(plot_data['datetime'].dt.hour).mean()
                
        elif granularity == "Single Lightsignals":
            if time_frame == "Yearly":
                plot_data = data.filter(like='Bel').groupby(data['datetime'].dt.year).mean()
            elif time_frame == "Monthly":
                plot_data = data.filter(like='Bel').groupby(data['datetime'].dt.month).mean()
            elif time_frame == "Hourly":
                plot_data = data.filter(like='Bel').groupby(data['datetime'].dt.hour).mean()
            
        
        elif granularity == "Full Intersection":
            if time_frame == "Yearly":
                plot_data = data.filter(like="Bel").sum(axis=1).groupby(data['datetime'].dt.year).mean()
            elif time_frame == "Monthly":
                plot_data = data.filter(like="Bel").sum(axis=1).groupby(data['datetime'].dt.month).mean()
            elif time_frame == "Hourly":
                plot_data = data.filter(like="Bel").sum(axis=1).groupby(data['datetime'].dt.hour).mean()

        if design == "Bar Chart":            
            
            if(granularity == "Full Intersection"):
                st.bar_chart(plot_data)
            else:
                for column in plot_data.columns:                
                    st.bar_chart(plot_data[column])
        
        elif design == "Line Chart":
            st.line_chart(plot_data)

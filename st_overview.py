import streamlit as st
import os
import pandas as pd 




def app():
    st.write("""# General Overview""")

    with st.expander("See explanation"):
        st.text("""
        The Form below offers a dropdown menu to select a Intersection and get an overview for the selected Intersection. 
        The radio controls offer a basic control over the shown data. 

        Granularity: 
            Single Lightsignals - shows every lightsignals from the Intersection 
            Grouped Lightsignals - Groups the lightsignals to each direction
            Full Intersection - aggregates all lightsignals
        
        Design:
            Line Chart - shows intersection in one combined line chart
            Bar Chart - creates bar chart for every intersection

        Time Frame:
            Yearly - aggregates data yearly
            Monthly - aggregates data monthly without respecting year (e.g. January for every Year is aggregated)
            Daily - aggregates data daily without respecting year and month
            Hourly - aggregates data hourly without respecting year, month and day
         
     """)

    intersection = [".".join(f.split(".")[:-1])
                    for f in os.listdir(r".\data")]

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
            time_frame = st.radio(label="Choose Time Frame", options=["Yearly", "Monthly", "Daily", "Hourly"])

        submitted = st.form_submit_button(label="Select")

    if submitted:

        try:
            data = pd.read_csv(r".\data" +
                               "\\" + option + r".csv", delimiter=";")
        except pd.errors.ParserError as e:
            st.write("""### Not Supported Intersection""")
            return
        except pd.errors.EmptyDataError as e:
            st.write("""### Not Supported Intersection""")
            return

        data = pd.read_csv(r".\data" +
                               "\\" + option + r".csv", delimiter=";")
        data.rename(columns={'01.06.2020 00:00': 'datetime'}, inplace=True)
        data['datetime'] = pd.to_datetime(
            data['datetime'], format='%d.%m.%Y %H:%M')
        
        try: 
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
                elif time_frame == "Daily":
                    plot_data = plot_data.groupby(plot_data['datetime'].dt.day).mean()
                elif time_frame == "Hourly":
                    plot_data = plot_data.groupby(plot_data['datetime'].dt.hour).mean()
                    
            elif granularity == "Single Lightsignals":
                if time_frame == "Yearly":
                    plot_data = data.filter(like='Bel').groupby(data['datetime'].dt.year).mean()
                elif time_frame == "Monthly":
                    plot_data = data.filter(like='Bel').groupby(data['datetime'].dt.month).mean()
                elif time_frame == "Daily":
                    plot_data = data.filter(like='Bel').groupby(data['datetime'].dt.day).mean()
                elif time_frame == "Hourly":
                    plot_data = data.filter(like='Bel').groupby(data['datetime'].dt.hour).mean()
                
            
            elif granularity == "Full Intersection":
                if time_frame == "Yearly":
                    plot_data = data.filter(like="Bel").sum(axis=1).groupby(data['datetime'].dt.year).mean()
                elif time_frame == "Monthly":
                    plot_data = data.filter(like="Bel").sum(axis=1).groupby(data['datetime'].dt.month).mean()
                elif time_frame == "Monthly":
                    plot_data = data.filter(like="Bel").sum(axis=1).groupby(data['datetime'].dt.day).mean()
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
        except:
            st.write("""### No Plots created""")
            return


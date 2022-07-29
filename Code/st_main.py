import streamlit as st

import st_specific_overview
import st_model
import st_overview

PAGES = {
    "Overview": st_overview,
    "Specific Overview": st_specific_overview,
    "Model": st_model
        }

# set up sidebar with navigation to all pages
st.set_page_config(layout='wide')
st.sidebar.title('Navigation')
selection = st.sidebar.radio('Go to', list(PAGES.keys()))
page = PAGES[selection]
page.app()
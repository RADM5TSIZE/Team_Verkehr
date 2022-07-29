import os
import pandas as pd
import re
import warnings
warnings.filterwarnings("error")

intersection = [".".join(f.split(".")[:-1])
                    for f in os.listdir(r"C:\Users\Moritz Mueller\Desktop\Verkehr\data")]

for option in intersection:
    try:
        data = pd.read_csv(r"C:\Users\Moritz Mueller\Desktop\Verkehr\data" +
                               "\\" + option + r".csv", delimiter=";")
    except pd.errors.ParserError as e:
        print(option)
    except pd.errors.EmptyDataError as e:
        print(option + "EmptyData")
    except pd.errors.DtypeWarning as e:
        print(option + "Warning")
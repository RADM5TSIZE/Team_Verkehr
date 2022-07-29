import os
import pandas as pd
import re

intersection = [".".join(f.split(".")[:-1])
                    for f in os.listdir(r"C:\Users\Moritz Mueller\Desktop\Verkehr\data")]

for option in intersection:
    try:
        data = pd.read_csv(r"C:\Users\Moritz Mueller\Desktop\Verkehr\data" +
                               "\\" + option + r".csv", delimiter=";")
    except pd.errors.ParserError as e:
        first_result = int(re.findall('[0-9]+', str(e))[1])
        
        try:
            if (first_result > 8772):
                data = pd.read_csv(r"C:\Users\Moritz Mueller\Desktop\Verkehr\data" +
                               "\\" + option + r".csv", delimiter=";", skiprows=first_result-1)
            else:
                data = pd.read_csv(r"C:\Users\Moritz Mueller\Desktop\Verkehr\data" +
                               "\\" + option + r".csv", delimiter=";", nrows=first_result)
        except pd.errors.ParserError as e:
            second_result = int(re.findall('[0-9]+', str(e))[1])
            
            if(first_result > second_result - first_result and first_result >  17545 - second_result):
                data = pd.read_csv(r"C:\Users\Moritz Mueller\Desktop\Verkehr\data" +
                               "\\" + option + r".csv", delimiter=";", nrows=first_result)
            elif(second_result - first_result > first_result and second_result - first_result > 17545 - second_result):
                data = pd.read_csv(r"C:\Users\Moritz Mueller\Desktop\Verkehr\data" +
                               "\\" + option + r".csv", delimiter=";", skiprows=first_result-1, nrows=second_result)
            else:
                data = pd.read_csv(r"C:\Users\Moritz Mueller\Desktop\Verkehr\data" +
                               "\\" + option + r".csv", delimiter=";", skiprows=second_result-1)

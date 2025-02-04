import numpy as np # Hacer calculos
import pandas as pd # Manipular tablas
import matplotlib as plt # Para hacer gráficos
import seaborn as sns # Para hacer gráficos
import scipy as sp # Calculos especializados

df = pd.read_csv('./Clase_4/datos_medio_ambiente_colombia.csv')

df.describe() # Muestra parte de los registros y todas las columnas de las tabla.
df.head() # Muestra los primeros registros
df.tail # Muestra los últimos registros
df.info() # 
df.columns
df.shape
df.isnull()
df.isnull().sum()


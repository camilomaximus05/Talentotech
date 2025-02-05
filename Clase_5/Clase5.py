import numpy as np # Hacer calculos
import pandas as pd # Manipular tablas
import matplotlib as plt # Para hacer gráficos
import seaborn as sns # Para hacer gráficos
import scipy as sp # Calculos especializados


df = pd.read_csv('./Clase_5/datos_agricolas.csv')


# Filtrar solo las columnas numéricas
df_num = df.select_dtypes(include='number')

'''
    select_dtypes() es un método de pandas que permite filtrar las columnas
    de un DataFrame en función de su tipo de datos. En este caso, estamos
    filtrando solo las columnas numéricas (int, float) y asignando el
    resultado a una variable llamada df_num.
'''

#calcular la mediana
mediana = df_num.median()

'''
    El método median() calcula la mediana de cada columna numérica en el DataFrame.
'''

print("Mediana de las columnas numéricas:")
print(mediana)

# Calcula la moda de las columnas numéricas pero solo la primera fila del resultado
moda = df_num.mode().iloc[0] 

'''
    El método mode() encuentra el valor más frecuente en cada columna.
    iloc[0] toma la primera fila del resultado ya que mode(), puede
    devolver múltiples filas si hay más de una moda
'''

print("Moda de las columnas numéricas:")
print(moda)

# DATOS ATIPICOS . OUTLIERS
#1. Seleccionar solo las columnas numéricas
df_num = df.select_dtypes(include='number')
# 2. Detectar outliers usando el rango intercuartílico (IQR)
Q1 = df_num.quantile(0.25)  # Primer cuartil
Q3 = df_num.quantile(0.75)  # Tercer cuartil
IQR = Q3 - Q1                     # Rango intercuartílico
# 3. Definir los límites para detectar atípicos
limite_inferior = Q1 - 1.5 * IQR
limite_superior = Q3 + 1.5 * IQR
# 4. Filtrar los datos para eliminar los outliers
df_sin_outliers = df[~((df_num < limite_inferior) | (df_num > limite_superior)).any(axis=1)]
# Mostrar el DataFrame sin outliers
print("DataFrame sin outliers:")
print(df_sin_outliers)

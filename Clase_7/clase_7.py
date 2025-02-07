# HAremos un resumen del uso de gráficos en Python
import numpy as np # Calculos numéricos
import matplotlib.pyplot as plt # Para hacer todo tipo de graficos
import scipy as sp # PAra calculos complejos y tambn estadísticos
import pandas as pd # Para manipulación de tablas

# Debemos cargar un archivo para trabajar
df = pd.read_csv('Clase_7/datos_salud.csv')

# Qué tipos de archivos de datos pueden leerse con PANDAS?
# Archivos XLS, XLSX, CSV, TXT, JSON,SQL

# Qué tipos de archivo NO LEE Pandas?
# Audio, Video, Documentos, PDF.

# 7 - Gráfico de área acumulada

# ID_Paciente Edad Peso  Altura Enfermedad_Cronica Frecuencia_Cardiaca Saturacion_Oxigeno Fumador Visitas_Medicas_Año Diagnostico_Reciente 


df['Enfermedad_Cronica'].value_counts().plot(kind='bar')
plt.show()
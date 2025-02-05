# Talentotech

## Clase #1
* **Conceptos basicos:** ( ¿Qué es una base de datos?, caracteristicas y gestores de base de datos).
    - **Base de datos**
        - **¿Qué es una base datos?:** Es una recopilación organizada y estructurados de datos.

        - **Tipo de base de datos existen:** DB SQL,  Informacion que se puede relacionar o DB NoSQL, infromación no relacionada.


## Clase #2
- **N/A**

## Clase #3
- **Interación y comandos sql en db**
    <br>
   - **Creación de una base de datos**
        ``` sql
        CREATE DATABASE {Nombre de la DB};
        ```
    - **Creación de una tabla (Entidad)**
        ``` sql
        CREATE TABLE {Nombre de la tabla} (
            {Atributo} (Tipo de valores y especificaciones),
            {Atributo} (Tipo de valores y especificaciones),
            {Atributo} (Tipo de valores y especificaciones)
        ); 
        ```
        **⚠ Nota:** Las <u>foreing key</u> se agregar por convención en la ultima parte de código.
        ```sql
        CREATE TABLE {Nombre de la tabla} (
            {'Nombre de la foreign key'} (Tipo de valores y especificaciones),
            FOREIGN KEY {'Nombre de la foreign key'} 
            REFERENCES {Nombre de la tabla de origen}(Nombre de la 'primary key')
        ); 

        ```

    - **Insertar valores en un tabla**
        ```sql
        INSERT INTO {Nombre de la tabla} VALUES {Valores que desee ingresar}
        ```
    
    - **Hacer Consultas de una tabla**
        <br>
        - **Seleccionar toda la tabla**
        ```sql
        SELECT * FROM {Nombre de la tabla que va a consultar};
        ```
         **⚠ Nota:** El ***(asterisco)** hace refencia a todos los registros.
        <br>
        - **Selecionar un registro por un atributo**
        ```sql
        SELECT FROM {Nombre de la tabla que va a consultar} 
        WHERE {Nombre del atributo} = {El valor que desea buscar};
        ```

# **Clase #4 (Pandas)**
#### Especificado en la carpeta: Clase_4

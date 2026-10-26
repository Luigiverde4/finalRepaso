import os
import psycopg
# from fastapi import FastAPI

# app = FastAPI()
url = os.getenv("DATABASE_URL")

# connection = psycopg.connect(url)


try:
    with psycopg.connect(url) as connection:
        print("Connection successful")
        cur = connection.cursor()
        #  BBDD
        QUERY = "SELECT name FROM characters"

        #  app-1  |     cur.execute(QUERY)
        # app-1  |   File "/usr/local/lib/python3.12/site-packages/psycopg/cursor.py", line 732, in execute
        # app-1  |     raise ex.with_traceback(None)
        # app-1  | psycopg.errors.UndefinedTable: relation "characters" does not exist
        # app-1  | LINE 1: SELECT name FROM characters
        # app-1  |                          ^
        # app-1 exited with code 1

        cur.execute(QUERY)
        peliculas = cur.fetchall()

        # Cerramos la conexión a la base de datos
        cur.close()
        connection.close()
except Exception as e:
    print("Error:", e)
    raise



# @app.get("/")
# def inicio():
#     return({"mensaje":"Hola"})

# @app.get("/peliculas")
# def cogePelis():

#     #  BBDD
#     QUERY = "SELECT * FROM empleados"
    
#     cur.execute(QUERY)
#     peliculas = cur.fetchall()

#     # Cerramos la conexión a la base de datos
#     cur.close()
#     connection.close()

#     return peliculas

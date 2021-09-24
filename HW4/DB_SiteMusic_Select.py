import psycopg2
import sqlalchemy

db = 'postgresql://ab:5015@localhost:5432/musicsite'
engine = sqlalchemy.create_engine(db)
connection = engine.connect()

print(list(connection.execute("""SELECT title, year FROM album WHERE year = 2018""")))
print(list(connection.execute("""SELECT title, duration FROM track ORDER BY duration DESC LIMIT 1;""")))
print(list(connection.execute("""SELECT title FROM track WHERE duration >= 210;""")))
print(list(connection.execute("""SELECT title FROM collection WHERE year BETWEEN 2018 AND 2020;""")))
print(list(connection.execute("""SELECT name FROM singer WHERE name NOT LIKE '%% %%';""")))
print(list(connection.execute("""SELECT title FROM track WHERE title LIKE '%%мой%%' or title LIKE '%%my%%';""")))
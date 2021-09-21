import psycopg2
import sqlalchemy

db = 'postgresql://ab:5015@localhost:5432/musicsite'
engine = sqlalchemy.create_engine(db)
connection = engine.connect()

list_singer = ['Galibri & Mavik', 'NLO', 'Клава Кока', 'Руки Вверх', 'DaBro', 'Dead Blonde', 'Дана Лахова', 'Хабиб',
               'Султан Лагучев', 'Инна Вальтер', 'Amri', 'Гудзон', 'Ahmed Shad', 'Branya & Macan', 'Zell & Batrai']

for i in range(len(list_singer)):
    connection.execute(f"""INSERT INTO singer(name) VALUES ('{list_singer[i]}');""")

list_genre = ['Фолк-музыка', 'Кантри', 'Блюз', 'Ритм-н-блюз', 'Джаз', 'Шансон',
              'Электронная музыка', 'Рок', 'Хип-хоп', 'Регги', 'Поп-музыка']

for i in range(len(list_genre)):
    connection.execute(f"""INSERT INTO genre(name) VALUES ('{list_genre[i]}');""")

list_album = [('The Dark Side of the Moon', 1973), ('Back in Black', 1980), ('The Bodyguard',	1992), ('Bat Out of Hell', 1977),
              ('Their Greatest Hits', 1976), ('Dirty Dancing', 1987), ('Призрак Оперы', 1986), ('Millennium', 1999),
              ('Saturday Night Fever', 1977), ('Rumours',	1977)]

for i in range(len(list_album)):
    connection.execute(f"""INSERT INTO album(title, year) VALUES ('{list_album[i][0]}', '{list_album[i][1]}');""")

list_collect = [('Сборник фолк-музыки', 1991), ('Сборник кантри', 2000), ('Сборник блюза', 1995), ('Сборник ритм-н-блюза', 2005),
                ('Сборник джаза', 1998), ('Сборник шансона', 2011),  ('Сборник электронной музыки', 2020),
                ('Сборник рока', 2010), ('Сборник хип-хопа', 1996), ('Сборник регги', 1780)]

for i in range(len(list_collect)):
    connection.execute(f"""INSERT INTO collection(title, year) VALUES ('{list_collect[i][0]}', '{list_collect[i][1]}');""")

list_track = [('КОРОНАМИНУС', 176), ('Вечная призрачная встречная', 311), ('Валим', 182), ('Дикая львица', 164),
              ('Полковнику никто не пишет', 296), ('Мандаринка', 153), ('Симпл Димпл', 114), ('Мальчик на девятке', 215),
              ('Турбомода', 281), ('Дискотека', 131), ('Пушка', 226), ('Синий Lamborghini', 142), ('Наруто', 105),
              ('Валим', 182), ('Венера-Юпитер', 127), ('АУФ', 95), ('Бесприданница', 180)]

for i in range(len(list_track)):
    connection.execute(f"""INSERT INTO track(title, duration) VALUES ('{list_track[i][0]}', '{list_track[i][1]}');""")

print(list(connection.execute("""SELECT title, year FROM album WHERE year = 1977""")))
print(list(connection.execute("""SELECT title, duration FROM track ORDER BY duration DESC LIMIT 1;""")))
print(list(connection.execute("""SELECT title FROM track WHERE duration >= 210;""")))
print(list(connection.execute("""SELECT title FROM collection WHERE year BETWEEN 2018 AND 2020;""")))
print(list(connection.execute("""SELECT name FROM singer WHERE name NOT LIKE '%% %%';""")))
print(list(connection.execute("""SELECT title FROM track WHERE title LIKE '%%мода%%';""")))





import psycopg2
import sqlalchemy

db = 'postgresql://ab:5015@localhost:5432/musicsite'
engine = sqlalchemy.create_engine(db)
connection = engine.connect()

# 1
print(list(connection.execute("""SELECT g.name, COUNT(sg.singer_id) count FROM genre g
JOIN singer_genre sg ON g.id = sg.genre_id
GROUP BY g.name
ORDER BY count DESC;
""")))

# 2
print(list(connection.execute("""SELECT COUNT(DISTINCT t.title) FROM track t
JOIN track_collection tc ON t.id = tc.track_id
JOIN collection c ON tc.collection_id = c.id
WHERE c.year BETWEEN 1977 and 2021;
""")))

# 3
print(list(connection.execute("""SELECT a.title, ROUND(AVG(t.duration), 2) round FROM album a
JOIN track t ON a.id = t.album_id
GROUP BY a.title
ORDER BY round DESC;
""")))

# 4
print(list(connection.execute("""SELECT DISTINCT s.name FROM singer s
JOIN singer_album sa ON s.id = sa.singer_id
JOIN album a ON sa.album_id = a.id
WHERE a.year != 2020;
""")))

# 5
print(list(connection.execute("""SELECT collection.title FROM collection
JOIN track_collection ts ON collection.id = ts.collection_id
JOIN track t ON ts.track_id = t.id
JOIN album a ON t.album_id = a.id
JOIN singer_album sa ON a.id = sa.album_id
JOIN singer s ON sa.singer_id = s.id
WHERE s.name = 'Клава Кока';
""")))

# 6
print(list(connection.execute("""SELECT a.title FROM album a
JOIN singer_album sa ON a.id = sa.album_id
JOIN singer s ON sa.singer_id = s.id
JOIN singer_genre sg ON s.id = sg.singer_id
GROUP BY a.title
HAVING COUNT(sg.genre_id) > COUNT(DISTINCT sg.singer_id);
""")))
  
# 6 Второй вариант
print(list(connection.execute("""SELECT DISTINCT a.title FROM album a
JOIN singer_album sa ON a.id = sa.album_id
JOIN singer s ON sa.singer_id = s.id
JOIN singer_genre sg ON s.id = sg.singer_id
GROUP BY a.title, sg.singer_id
HAVING COUNT(sg.genre_id) > 1;
""")))

# 7
print(list(connection.execute("""SELECT t.title FROM track t
LEFT JOIN track_collection tc ON t.id = tc.track_id
WHERE tc.track_id IS NULL;
""")))

# 8
print(list(connection.execute("""SELECT DISTINCT s.name FROM singer s
JOIN singer_album sa ON s.id = sa.singer_id
JOIN album a ON sa.album_id = a.id
JOIN track t ON a.id = t.album_id
WHERE t.duration = (SELECT MIN(duration) FROM track);
""")))

# 9
print(list(connection.execute("""SELECT a.title FROM album a
JOIN track t ON a.id = t.album_id
GROUP BY a.title
HAVING COUNT(t.album_id) =  (SELECT MIN(ct2) from (SELECT COUNT(id) AS ct2 FROM track GROUP BY album_id) AS ct);
""")))

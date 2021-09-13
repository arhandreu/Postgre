```sql
create table if not exists Genre (
Id serial primary key, 
Name varchar(20) not null
)
create table if not exists Singer (
Id serial primary key, 
Name varchar(40) not null, 
Genreid integer references genre(id)
)
create table if not exists album (
Id serial primary key, 
Title varchar(40) not null, 
Year date, 
singerid integer references singer(id))  
create table if not exists track (
Id serial primary key, 
Title varchar(40) not null, 
Duration integer, 
Albumid integer references album(id))  
```
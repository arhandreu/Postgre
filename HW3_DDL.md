```sql
create table if not exists singer(
id serial primary key,
Name varchar(40) not null
);

create table if not exists genre(
id serial primary key,
Name varchar(20) not null
);

create table if not exists singer_genre(
Singer_id integer references singer(id),
Genre_id integer references genre(id),
constraint SGK primary key(Singer_id, Genre_id) 
);

create table if not exists track(
id serial primary key,
Title varchar(40) not null,
Duration integer
);

create table if not exists album(
id serial primary key,
Title varchar(40) not null,
Year date
);

create table singer_album_track(
id serial primary key,
Singer_id integer references singer(id),
Track_id integer unique references track(id),
Album_id integer references album(id)
);

create table if not exists collection(
id serial primary key,
Title varchar(40) not null,
Year integer check (Year >= 0 and Year <=9999)
);

create table track_collection(
Track_id integer references track(id),
Collection_id integer references collection(id),
constraint TCK primary key(Track_id, Collection_id) 
);
```
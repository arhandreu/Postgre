```sql
create table if not exists staff(
id serial primary key,
Name varchar(40) not null,
Dep_id integer references department(id)
);

create table if not exists genre(
id serial primary key,
Name varchar(30) not null.
Head_id integer unique refernces staff(id)
);
```
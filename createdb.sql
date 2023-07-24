create table if not exists "Artist"(
    "id" serial primary key,
    "artist_name" varchar(80) not null
);

create table if not exists "Genre"(
    "id" serial primary key,
    "genre_name" varchar(80) not null
);

create table if not exists "Artist_genre"(
    "artist_id" integer not null references "Artist" ("id"),
    "genre_id" integer not null references "Genre" ("id")
constraint pk primary key ("artist_id", "genre_id"),
);

create table if not exists "Albums"(
    "album_id" serial primary key,
    "album_name" varchar(80) not null,
year integer not null
);

create table if not exists "Album_artist"(
    "artist_id" integer not null references "Artist" ("id"),
    "album_id" integer not null references "Albums" ("album_id"),
constraint pa primary key("artist_id", "album_id")
);

create table if not exists "Tracks"(
    "track_id" serial primary key,
    "track_name" varchar(80) not null,
    "album_id" integer not null references "Albums" ("album_id"),
    "duration" time not null
);

create table if not exists "Compilations"(
    "compilation_id" serial primary key,
    "name" varchar(80) not null,
    "year" integer not null
);

create table  if not exists "Track_compilation"(
    "track_id" integer not null references "Tracks" ("track_id"),
    "compilation_id" integer not null references "Compilations" ("compilation_id"),
constraint pc primary key ("track_id", "compilation_id")
);


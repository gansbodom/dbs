CREATE DATABASE music_shop;

\connect music_shop

SET SESSION CHARACTERISTICS AS TRANSACTION ISOLATION LEVEL SERIALIZABLE;

create table if not exist "Artist"(
    "artist_id" serial primary key,
    "artist_name" varchar(80) not null
);

create table if not exist "Genre"(
    "genre_id" serial primary key,
    "genre_name" varchar(80) not null
);

create table if not exist "Artist_genre"(
    "artist_id" integer not null references Artist(artist_id),
    "genre_id" integer not null references Genre(genre_id)
constraint pk primary key(artist_id, genre_id),
);

create table if not exist "Albums"(
    "album_id" serial primary key,
    "album_name" varchar(80) not null,
year integer not null,
);

create table "Album_artist"(
    "artist_id" integer not null references Artist(artist_id),
    "album_id" integer not null references Album(album_id)
constraint pk primary key(artist_id, album_id),
);

create table if not exist "Tracks"(
    "track_id" serial primary key,
    "track_name" varchar(80) not null,
    "album_id" integer not null references Albums(album_id),
    "duration" time not null
);

create table "Compilations"(
    "compilation_id" serial primary key,
    "name" varchrar(80) not null,
year integer not null,
);

create table "Track_compilation"(
    "track_id" integer not null references Tracks(track_id),
    "compilation_id" integer not null references Compilations(compilation_id)
constraint pk primary key (track_id, compilation_id),
);


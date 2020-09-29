DROP DATABASE IF EXISTS books_database;

CREATE DATABASE books_database;

\c books_database

CREATE TABLE user
    (
        id SERIAL PRIMARY KEY,
        first_name TEXT NOT NULL,
        last_name TEXT NOT NULL,
        email TEXT NOT NULL,
        bookshelf TEXT REFERENCES bookshelf;
    );

CREATE TABLE bookshelf
    (
        id SERIAL PRIMARY KEY,
        user TEXT REFERENCES user,
        title TEXT NOT NULL,
        book TEXT REFERENCES book;
    );

CREATE TABLE book
    (
        id SERIAL PRIMARY KEY,
        title TEXT NOT NULL,
        author TEXT REFERENCES author,
        genre TEXT REFERENCES genre,
        summary TEXT NOT NULL;
    );

CREATE TABLE author
    (
        id SERIAL PRIMARY KEY,
        first_name TEXT NOT NULL,
        last_name TEXT NOT NULL,
        book TEXT REFERENCES book,
        genre TEXT REFERENCES genre;
    );

CREATE TABLE genre
    (
        id SERIAL PRIMARY KEY,
        genre TEXT NOT NULL;
    )
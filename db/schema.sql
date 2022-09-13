CREATE DATABASE flowers_app;
\c flowers_app

CREATE TABLE flowers(
  id SERIAL PRIMARY KEY,
  name TEXT,
  region TEXT,
  family TEXT,
  image_url TEXT
);

CREATE TABLE users(
  id SERIAL PRIMARY KEY,
  first_name TEXT,
  last_name TEXT,
  email TEXT
);

ALTER TABLE users ADD COLUMN password_digest TEXT;
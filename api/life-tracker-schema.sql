CREATE TABLE users (
    id          SERIAL PRIMARY KEY,
    email       TEXT UNIQUE NOT NULL CHECK (POSITION('@' IN email) > 1), 
    password    TEXT NOT NULL,
    username    TEXT UNIQUE NOT NULL,
    first_name  TEXT NOT NULL,
    last_name   TEXT NOT NULL
)

CREATE TYPE foodCategories AS ENUM ('Fruit', 'Vegetable', 'Grain', 'Protein Food', 'Dairy', 'Beverage')
CREATE TYPE exerciseCategories AS ENUM ('Cardio', 'Resistance')

CREATE TABLE food (
    id          SERIAL PRIMARY KEY 
    name        TEXT NOT NULL, 
    category    foodCategories,
    quantity    INTEGER DEFAULT 1,
    calories    INTEGER DEFAULT 1,
    imageUrl    TEXT
)

CREATE TABLE exercise (
    id          SERIAL PRIMARY KEY
    name        TEXT UNIQUE NOT NULL,
    category    exerciseCategories,
    duration    INTEGER DEFAULT 1,
    intensity   INTEGER DEFAULT 1 CHECK (intensity <= 10)
)

--  many to many relationship 
CREATE TABLE users_food (
    id          SERIAL PRIMARY KEY
    user_id     REFERENCES users(id) ON DELETE CASCADE 
    food_id     REFERENCES food(id) ON DELETE CASCADE
)

-- CREATE TABLE sleep (
--     id          SERIAL PRIMARY KEY 
--     user_id     REFERENCES users(id) ON DELETE CASCADE
--     startTime   TEXT UNIQUE NOT NULL,
--     endTime     TEXT UNIQUE NOT NULL
-- )
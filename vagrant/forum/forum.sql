
CREATE TABLE posts ( content TEXT,
                     time TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
                     id SERIAL );

CREATE TABLE fishies(
  name TEXT,
  info SERIAL);
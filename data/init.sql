DROP TABLE IF EXISTS ratings;
CREATE TABLE ratings (
  id integer GENERATED ALWAYS AS IDENTITY,
  userid integer NOT NULL,
  movieid integer NOT NULL,
  rating numeric(2,1),
  timestamp integer,
  PRIMARY KEY (id)
);
COPY ratings(userid, movieid, rating, timestamp) FROM '/var/lib/postgresql/ratings.csv' csv header;

DROP TABLE IF EXISTS tags;
CREATE TABLE tags (
  id integer GENERATED ALWAYS AS IDENTITY,
  userid integer,
  movieid integer NOT NULL,
  tag varchar(255),
  timestamp integer,
  PRIMARY KEY (id)
);
COPY tags(userid, movieid, tag, timestamp) FROM '/var/lib/postgresql/tags.csv' csv header;

DROP TABLE IF EXISTS movies;
CREATE TABLE movies (
  movieid integer NOT NULL,
  title varchar(300),
  genres varchar(300),
  PRIMARY KEY (movieid)
);
COPY movies FROM '/var/lib/postgresql/movies.csv' csv header;

DROP TABLE IF EXISTS links;
CREATE TABLE links (
  id integer GENERATED ALWAYS AS IDENTITY,
  movieid integer NOT NULL,
  imdbid integer,
  tmbdid integer,
  PRIMARY KEY (id)
);
COPY links(movieid, imdbid, tmbdid) FROM '/var/lib/postgresql/links.csv' csv header;


CREATE TABLE Artist (
  artist_id INTEGER NOT NULL AUTO_INCREMENT,
  name VARCHAR(255),
  PRIMARY KEY(artist_id)  
) ENGINE=InnoDB;



CREATE TABLE Album (
  album_id INTEGER NOT NULL AUTO_INCREMENT,
  title VARCHAR(255),
  artist_id INTEGER,
    
  PRIMARY KEY(album_id),
  INDEX USING BTREE(title),
  
  CONSTRAINT FOREIGN KEY(artist_id)
    REFERENCES Artist (artist_id)
    ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB;




CREATE TABLE Genre (
  genre_id INTEGER NOT NULL AUTO_INCREMENT,
  name VARCHAR(255),
  PRIMARY KEY(genre_id)  
) ENGINE=InnoDB;



CREATE TABLE Track (
  track_id INTEGER NOT NULL AUTO_INCREMENT,
  title VARCHAR(255),
  len INTEGER,
  rating INTEGER,
  count INTEGER,
  album_id INTEGER,
  genre_id INTEGER,
  PRIMARY KEY(track_id),
  INDEX USING BTREE(title),
  
  CONSTRAINT FOREIGN KEY(album_id) REFERENCES Album (album_id)
    ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT FOREIGN KEY(genre_id) REFERENCES Genre (genre_id)
    ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB;


%Dumping data for table `artist


INSERT INTO Artist ( name) VALUES ('Madonna');
INSERT INTO Artist ( name) VALUES ('Calvin Harris');
INSERT INTO Artist ( name) VALUES ('Beyonce');


--- Insert data into Genre

INSERT INTO Genre ( name) VALUES ('Electro House');
INSERT INTO Genre ( name) VALUES ('Pop');
INSERT INTO Genre ( name) VALUES ('R&B');


--- Insert data into Album

INSERT INTO Album ( title, artist_id) VALUES ('Confessions on a Dance Floor', 1);
INSERT INTO Album ( title, artist_id) VALUES ('18 Months', 2);
INSERT INTO Album ( title, artist_id) VALUES ('Motion', 2);
INSERT INTO Album ( title, artist_id) VALUES ('Beyonce', 3);
INSERT INTO Album ( title, artist_id) VALUES ('Lemonade', 3);



--- Insert data into Track

INSERT INTO Track (title, len, rating, count, album_id, genre_id) VALUES ('Hung Up', 336, 5, 0, 1, 2);
INSERT INTO Track (title,len, rating, count, album_id, genre_id) VALUES ('Sorry', 283,5, 0, 1, 2);
INSERT INTO Track (title,len, rating, count, album_id, genre_id) VALUES ('Get Together', 330,5, 0, 1, 2);
INSERT INTO Track (title,len, rating, count, album_id, genre_id) VALUES ('Jump', 226, 5, 0, 1, 2);
INSERT INTO Track (title, len, rating, count, album_id, genre_id) VALUES ('Feel So Close', 206,5, 0, 2,1);
INSERT INTO Track (title, len, rating, count, album_id, genre_id) VALUES('I Need Your Love', 236, 5, 0, 2, 1);
INSERT INTO Track (title, len, rating, count, album_id, genre_id) VALUES('Lets Go', 237, 5, 0, 2, 1);
INSERT INTO Track (title, len, rating, count, album_id, genre_id) VALUES('Thinking About You', 247,5, 0, 2, 1);
INSERT INTO Track (title, len, rating, count, album_id, genre_id) VALUES('Under Control', 84, 5, 0, 3, 1);
INSERT INTO Track (title, len, rating, count, album_id, genre_id) VALUES('Summer',222, 5, 0, 3, 1);
INSERT INTO Track (title, len, rating, count, album_id, genre_id) VALUES('Blame',212, 5, 0, 3, 1);
INSERT INTO Track (title, len, rating, count, album_id, genre_id) VALUES('Outside', 227,5, 0, 3, 1);
INSERT INTO Track (title, len, rating, count, album_id, genre_id) VALUES('XO',215, 5, 0, 4, 3);
INSERT INTO Track (title, len, rating, count, album_id, genre_id) VALUES('Drunk in Love', 323,5, 0, 4, 3);
INSERT INTO Track (title, len, rating, count, album_id, genre_id) VALUES( 'Partition',319, 5, 0, 4, 3);
INSERT INTO Track (title, len, rating, count, album_id, genre_id) VALUES('Pretty Hurts', 257,5, 0, 4, 3);
INSERT INTO Track (title, len, rating, count, album_id, genre_id) VALUES('Formation', 206, 5, 0, 5, 3);
INSERT INTO Track (title, len, rating, count, album_id, genre_id) VALUES('Well', 232, 5, 0, 5, 3);
INSERT INTO Track (title, len, rating, count, album_id, genre_id) VALUES('Hold Up',221, 5, 0, 5, 3);
INSERT INTO Track (title, len, rating, count, album_id, genre_id) VALUES('Freedom', 249, 5, 0, 5, 3);




SELECT DISTINCT Artist.name, Genre.name FROM Track JOIN Genre JOIN Album JOIN Artist ON Track.genre_id= Genre.genre_id AND Track.album_id= Album.album_id AND Album.artist_id = Artist.artist_id WHERE Artist.name = 'Madonna'

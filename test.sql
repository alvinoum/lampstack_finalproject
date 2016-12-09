DROP TABLE powers CASCADE;
DROP TABLE natures CASCADE;
DROP TABLE weaknesses CASCADE;
DROP TABLE weakness_types CASCADE;
DROP TABLE monster_statuses CASCADE;
DROP TABLE movies CASCADE;
DROP TABLE monsters CASCADE;
DROP TABLE actors CASCADE;
DROP TABLE appearances CASCADE;
DROP TABLE monster_powers CASCADE;
DROP TABLE monster_natures CASCADE;
DROP TABLE monster_weaknesses CASCADE;

----------------------------------------
--                LISTS               --
----------------------------------------

CREATE TABLE powers (
	id SERIAL PRIMARY KEY,
	name VARCHAR(255)
);

----------------------------------------

CREATE TABLE natures (
	id SERIAL PRIMARY KEY,
	name VARCHAR(255)
);

----------------------------------------

CREATE TABLE weaknesses (
	id SERIAL PRIMARY KEY,
	name VARCHAR(255)
);

----------------------------------------

CREATE TABLE weakness_types (
	id SERIAL PRIMARY KEY,
	name VARCHAR(255)
);

----------------------------------------

CREATE TABLE monster_statuses (
	id SERIAL PRIMARY KEY,
	name VARCHAR(255)
);

----------------------------------------
--              OBJECTS               --
----------------------------------------

CREATE TABLE movies (
	id SERIAL PRIMARY KEY,
	name VARCHAR(255),
    tagline VARCHAR(255),
	release_year INTEGER
);

----------------------------------------

CREATE TABLE monsters (
	id SERIAL PRIMARY KEY,
	name VARCHAR(255)
);

----------------------------------------

CREATE TABLE actors (
	id SERIAL PRIMARY KEY,
	name VARCHAR(255),
	birth_year INTEGER
);

----------------------------------------

CREATE TABLE appearances (
	id SERIAL PRIMARY KEY,
	movie_id INTEGER REFERENCES movies(id),
	monster_id INTEGER REFERENCES monsters(id),
	actor_id INTEGER REFERENCES actors(id),
	monster_status_id INTEGER REFERENCES monster_statuses(id)
);

----------------------------------------
--        RELATIONSHIPS               --
----------------------------------------

CREATE TABLE monster_powers (
	monster_id INTEGER REFERENCES monsters(id),
	power_id INTEGER REFERENCES powers(id)
);

----------------------------------------

CREATE TABLE monster_natures (
	monster_id INTEGER REFERENCES monsters(id),
	nature_id INTEGER REFERENCES natures(id)
);

----------------------------------------

CREATE TABLE monster_weaknesses (
	monster_id INTEGER REFERENCES monsters(id),
	weakness_id INTEGER REFERENCES weaknesses(id),
	weakness_type_id INTEGER REFERENCES weakness_types
);

----------------------------------------
--              DATA                  --
----------------------------------------

--1
INSERT INTO powers (name) VALUES ('night vision');
--2
INSERT INTO powers (name) VALUES ('powerful claws');
--3
INSERT INTO powers (name) VALUES ('powerful jaws');
--4
INSERT INTO powers (name) VALUES ('hypnosis');
--5
INSERT INTO powers (name) VALUES ('invulnerability');
--6
INSERT INTO powers (name) VALUES ('pass through small holes');
--7
INSERT INTO powers (name) VALUES ('great physical strength');
--8
INSERT INTO powers (name) VALUES ('enhanced physical resistance');
--9
INSERT INTO powers (name) VALUES ('underwater breathing');
--10
INSERT INTO powers (name) VALUES ('shapeshifting');
--11
INSERT INTO powers (name) VALUES ('invisibility');
--12
INSERT INTO powers (name) VALUES ('wall crawling');
--13
INSERT INTO powers (name) VALUES ('enhanced speed');
--14
INSERT INTO powers (name) VALUES ('enhanced agility');

----------------------------------------

--1
INSERT INTO natures (name) VALUES ('undead/reanimated');
--2
INSERT INTO natures (name) VALUES ('subterranean');
--3
INSERT INTO natures (name) VALUES ('extraterrestrial');
--4
INSERT INTO natures (name) VALUES ('scientific experiment');
--5
INSERT INTO natures (name) VALUES ('aquatic');
--6
INSERT INTO natures (name) VALUES ('supernatural');
--7
INSERT INTO natures (name) VALUES ('animal');
--8
INSERT INTO natures (name) VALUES ('plant');
--9
INSERT INTO natures (name) VALUES ('anthropomorphic');
--10
INSERT INTO natures (name) VALUES ('insect');
--11
INSERT INTO natures (name) VALUES ('vampire');
--12
INSERT INTO natures (name) VALUES ('werewolf');
--13
INSERT INTO natures (name) VALUES ('abomination');
--14
INSERT INTO natures (name) VALUES ('plant');
--15
INSERT INTO natures (name) VALUES ('reptile');
--16
INSERT INTO natures (name) VALUES ('zombie');
--17
INSERT INTO natures (name) VALUES ('man');
--18
INSERT INTO natures (name) VALUES ('deformed/disfigured');
--19
INSERT INTO natures (name) VALUES ('malevolent');
--20
INSERT INTO natures (name) VALUES ('feral');
--21
INSERT INTO natures (name) VALUES ('mad');
--22
INSERT INTO natures (name) VALUES ('giant');

----------------------------------------

--1
INSERT INTO weaknesses (name) VALUES ('Princess Ankh-es-en-amon');
--2
INSERT INTO weaknesses (name) VALUES ('the goddess Isis');
--3
INSERT INTO weaknesses (name) VALUES ('light');
--4
INSERT INTO weaknesses (name) VALUES ('exposed brain');
--5
INSERT INTO weaknesses (name) VALUES ('slow');
--6
INSERT INTO weaknesses (name) VALUES ('human blood');
--7
INSERT INTO weaknesses (name) VALUES ('human flesh');
--8
INSERT INTO weaknesses (name) VALUES ('cold');
--9
INSERT INTO weaknesses (name) VALUES ('a lovely human female');
--10
INSERT INTO weaknesses (name) VALUES ('bullets');
--11
INSERT INTO weaknesses (name) VALUES ('fire');
--12
INSERT INTO weaknesses (name) VALUES ('mirrors');
--13
INSERT INTO weaknesses (name) VALUES ('garlic');
--14
INSERT INTO weaknesses (name) VALUES ('crucifixes');
--15
INSERT INTO weaknesses (name) VALUES ('silver');
--16
INSERT INTO weaknesses (name) VALUES ('full moon');
--17
INSERT INTO weaknesses (name) VALUES ('wooden stake through heart');
--18
INSERT INTO weaknesses (name) VALUES ('wolfsbane');
--19
INSERT INTO weaknesses (name) VALUES ('music');
--20
INSERT INTO weaknesses (name) VALUES ('electricity');

----------------------------------------

--1
INSERT INTO weakness_types (name) VALUES ('wants/needs/attracted to');
--2
INSERT INTO weakness_types (name) VALUES ('vulnerable to/destroyed by');
--3
INSERT INTO weakness_types (name) VALUES ('repelled by/fears');
--4
INSERT INTO weakness_types (name) VALUES ('Achilles heel');
--5
INSERT INTO weakness_types (name) VALUES ('incapacitated by');
--6
INSERT INTO weakness_types (name) VALUES ('exposed/detected by');
--7
INSERT INTO weakness_types (name) VALUES ('transformed/triggered by');

----------------------------------------

--1
INSERT INTO monster_statuses (name) VALUES ('destroyed');
--2
INSERT INTO monster_statuses (name) VALUES ('unknown/presumed at large');
--3
INSERT INTO monster_statuses (name) VALUES ('incapacitated/in storage');
--4
INSERT INTO monster_statuses (name) VALUES ('erroneously believed destroyed');

----------------------------------------

--1
INSERT INTO movies (name,tagline,release_year) VALUES ('The Mummy','It comes to life!',1932);
--2
INSERT INTO movies (name,tagline,release_year) VALUES ('The Mole People',' From a Lost Age... HORROR Crawls from the Depths of the Earth! ',1956);
--3
INSERT INTO movies (name,tagline,release_year) VALUES ('This Island Earth','Two mortals trapped in outer space... challenging the unearthly furies of an outlaw planet gone mad! ',1955);
--4
INSERT INTO movies (name,tagline,release_year) VALUES ('The Alligator People','Terror in the Bayou! ',1959);
--5
INSERT INTO movies (name,tagline,release_year) VALUES ('The Little Shop of Horrors','The flowers that kill in the Spring TRA-LA ',1960);
--6
INSERT INTO movies (name,tagline,release_year) VALUES ('The Blob','The indestructible creature! Bloated with the blood of its victims!',1958);
--7
INSERT INTO movies (name,tagline,release_year) VALUES ('The Creature from the Black Lagoon','Centuries of passion pent up in his savage heart! ',1954);
--8
INSERT INTO movies (name,tagline,release_year) VALUES ('Revenge of the Creature','TERROR IS LOOSE IN THE CITY!',1955);
--9
INSERT INTO movies (name,tagline,release_year) VALUES ('The Creature Walks Among Us','Half monster... Half man - A clutching claw at the heart of civilization.',1956);
--10
INSERT INTO movies (name,tagline,release_year) VALUES ('Frankenstein','A Monster Science Created - But Could Not Destroy! ',1931);
--11
INSERT INTO movies (name,tagline,release_year) VALUES ('The Bride of Frankenstein','She breathes, sees, hears, walks -- but can she love? ',1935);
--12
INSERT INTO movies (name,tagline,release_year) VALUES ('Son of Frankenstein','The black shadows of the past bred this half-man . . . half-demon ! . . . creating a new and terrible juggernaut of destruction ! ',1939);
--13
INSERT INTO movies (name,tagline,release_year) VALUES ('The Ghost of Frankenstein','No Chains Can Hold Him! No Tomb Can Seal Him In! ',1942);
--14
INSERT INTO movies (name,tagline,release_year) VALUES ('Frankenstein Meets the Wolfman','FROZEN EVIL meets FIERY HATE',1943);
--15
INSERT INTO movies (name,tagline,release_year) VALUES ('House of Frankenstein','All the Screens Titans of Terror - Together in the Greatest of All SCREEN SENSATIONS!',1945);
--16
INSERT INTO movies (name,tagline,release_year) VALUES ('House of Dracula','HORROR UPON HORROR in the HOUSE OF DRACULA',1945);
--17
INSERT INTO movies (name,tagline,release_year) VALUES ('Abbot and Costello Meet Frankenstein','Its a grand new idea for fun!',1947);
--18
INSERT INTO movies (name,tagline,release_year) VALUES ('Young Frankenstein','The scariest comedy of all time!',1974);
--19
INSERT INTO movies (name,release_year) VALUES ('The Horror of Frankenstein',1970);
--20
INSERT INTO movies (name,tagline,release_year) VALUES ('Frankenstein and the Monster from Hell','Your blood will run cold when the monster rises.',1973);
--21
INSERT INTO movies (name,tagline,release_year) VALUES ('The Mummys Hand','The tomb of a thousand terrors!',1940);
--22
INSERT INTO movies (name,tagline,release_year) VALUES ('The Mummys Tomb','Eyes That Crawl With Madness! Hands That Creep Like Cobras!',1942);
--23
INSERT INTO movies (name,tagline,release_year) VALUES ('The Mummys Ghost','Nameless! Fleshless! Deathless!',1944);
--24
INSERT INTO movies (name,tagline,release_year) VALUES ('The Mummys Curse','Egypts ancient loves live again in evil!',1944);
--25
INSERT INTO movies (name,tagline,release_year) VALUES ('Abbott and Costello Meet the Mummy','It has been said that a mans best friend is his mummy...',1955);
--26
INSERT INTO movies (name,tagline,release_year) VALUES ('The Mummy','Its evil look brings MADNESS! Its evil spell ENSLAVES! Its evil touch KILLS KILLS KILLS!',1959);
--27
INSERT INTO movies (name,tagline,release_year) VALUES ('The Curse of the Mummys Tomb','Half bone, half bandage...all blood-curdling terror!',1964);
--28
INSERT INTO movies (name,tagline,release_year) VALUES ('The Mummys Shroud','Beware the beat of the cloth-wrapped feet!',1967);
--29
INSERT INTO movies (name,tagline,release_year) VALUES ('The Invisible Man','Catch me if you can!',1933);
--30
INSERT INTO movies (name,tagline,release_year) VALUES ('The Phantom of the Opera','The greatest horror film of modern cinema!',1925);
--31
INSERT INTO movies (name,release_year) VALUES ('The Hunchback of Notre Dame',1923);
--32
INSERT INTO movies (name,tagline,release_year) VALUES ('The Phantom of the Opera','IT WILL LIVE IN YOUR MEMORY forever!',1943);
--33
INSERT INTO movies (name,tagline,release_year) VALUES ('The Phantom of the Opera','Out of the hell-fire of horror unimaginable rises the figure of terror incarnate!',1962);
--34
INSERT INTO movies (name,tagline,release_year) VALUES ('The Horror of Dracula','The terrifying lover who died - yet lived!',1958);
--35
INSERT INTO movies (name,tagline,release_year) VALUES ('Dracula: Prince of Darkness','FIGHT BACK! DEFEND YOURSELF!',1966);
--36
INSERT INTO movies (name,tagline,release_year) VALUES ('Dracula Has Risen from the Grave','You just cant keep a good man down!',1968);
--37
INSERT INTO movies (name,tagline,release_year) VALUES ('Son of Dracula','BLOOD on his lips...! DOOM in his eyes...! an accursed VAMPIRE!',1943);
--38
INSERT INTO movies (name,release_year) VALUES ('Nosferatu',1922);
--39
INSERT INTO movies (name,tagline,release_year) VALUES ('The Thing from Another World','Where Did It Come From? How Did It Get Here? WHAT IS IT?',1951);

----------------------------------------

--1
INSERT INTO monsters (name) VALUES ('The Mummy');
--2
INSERT INTO monsters (name) VALUES ('The Mole People');
--3
INSERT INTO monsters (name) VALUES ('Metaluna Mutant');
--4
INSERT INTO monsters (name) VALUES ('The Alligator Man');
--5
INSERT INTO monsters (name) VALUES ('Audrey Junior');
--6
INSERT INTO monsters (name) VALUES ('The Blob');
--7
INSERT INTO monsters (name) VALUES ('The Creature from the Black Lagoon');
--8
INSERT INTO monsters (name) VALUES ('The Frankenstein Monster');
--9
INSERT INTO monsters (name) VALUES ('The Bride of Frankenstein');
--10
INSERT INTO monsters (name) VALUES ('The Wolf Man');
--11
INSERT INTO monsters (name) VALUES ('Count Dracula');
--12
INSERT INTO monsters (name) VALUES ('The Invisible Man');
--13
INSERT INTO monsters (name) VALUES ('The Phantom of the Opera');
--14
INSERT INTO monsters (name) VALUES ('Quasimodo');
--15
INSERT INTO monsters (name) VALUES ('The Thing');

----------------------------------------

--1
INSERT INTO actors (name,birth_year) VALUES ('Boris Karloff',1887);
--2
INSERT INTO actors (name,birth_year) VALUES ('Richard Crane',1918);
--3
INSERT INTO actors (name,birth_year) VALUES ('Ben Chapman',1925);
--4
INSERT INTO actors (name,birth_year) VALUES ('Tom Hennesy',1923);
--5
INSERT INTO actors (name,birth_year) VALUES ('Don Megowan',1922);
--6
INSERT INTO actors (name,birth_year) VALUES ('Elsa Lanchester',1902);
--7
INSERT INTO actors (name,birth_year) VALUES ('Lon Chaney, Jr',1906);
--8
INSERT INTO actors (name,birth_year) VALUES ('Bela Lugosi',1882);
--9
INSERT INTO actors (name,birth_year) VALUES ('Glenn Strange',1899);
--10
INSERT INTO actors (name,birth_year) VALUES ('John Carradine',1906);
--11
INSERT INTO actors (name,birth_year) VALUES ('Peter Boyle',1935);
--12
INSERT INTO actors (name,birth_year) VALUES ('David Prowse',1970);
--13
INSERT INTO actors (name,birth_year) VALUES ('Tom Tyler',1903);
--14
INSERT INTO actors (name,birth_year) VALUES ('Eddie Parker',1900);
--15
INSERT INTO actors (name,birth_year) VALUES ('Christopher Lee',1922);
--16
INSERT INTO actors (name,birth_year) VALUES ('Dickie Owen',1929);
--17
INSERT INTO actors (name,birth_year) VALUES ('Eddie Powell',1927);
--18
INSERT INTO actors (name,birth_year) VALUES ('Claude Rains',1889);
--19
INSERT INTO actors (name,birth_year) VALUES ('Lon Chaney',1883);
--20
INSERT INTO actors (name,birth_year) VALUES ('Herbert Lom',1917);
--21
INSERT INTO actors (name,birth_year) VALUES ('Max Schreck',1879);
--22
INSERT INTO actors (name,birth_year) VALUES ('James Arness',1923);

----------------------------------------

--1
INSERT INTO appearances (movie_id,monster_id,actor_id,monster_status_id) VALUES (1,1,1,1);
--2
INSERT INTO appearances (movie_id,monster_id,actor_id,monster_status_id) VALUES (2,2,NULL,2);
--3
INSERT INTO appearances (movie_id,monster_id,actor_id,monster_status_id) VALUES (3,3,NULL,1);
--4
INSERT INTO appearances (movie_id,monster_id,actor_id,monster_status_id) VALUES (4,4,2,1);
--5
INSERT INTO appearances (movie_id,monster_id,actor_id,monster_status_id) VALUES (5,5,NULL,2);
--6
INSERT INTO appearances (movie_id,monster_id,actor_id,monster_status_id) VALUES (6,6,NULL,3);
--7
INSERT INTO appearances (movie_id,monster_id,actor_id,monster_status_id) VALUES (7,7,3,4);
--8
INSERT INTO appearances (movie_id,monster_id,actor_id,monster_status_id) VALUES (8,7,4,4);
--9
INSERT INTO appearances (movie_id,monster_id,actor_id,monster_status_id) VALUES (9,7,5,2);
--10
INSERT INTO appearances (movie_id,monster_id,actor_id,monster_status_id) VALUES (10,8,1,4);
--11
INSERT INTO appearances (movie_id,monster_id,actor_id,monster_status_id) VALUES (11,8,1,4);
--12
INSERT INTO appearances (movie_id,monster_id,actor_id,monster_status_id) VALUES (11,9,6,1);
--13
INSERT INTO appearances (movie_id,monster_id,actor_id,monster_status_id) VALUES (12,8,1,4);
--14
INSERT INTO appearances (movie_id,monster_id,actor_id,monster_status_id) VALUES (13,8,7,4);
--15
INSERT INTO appearances (movie_id,monster_id,actor_id,monster_status_id) VALUES (14,8,8,4);
--16
INSERT INTO appearances (movie_id,monster_id,actor_id,monster_status_id) VALUES (14,10,7,4);
--17
INSERT INTO appearances (movie_id,monster_id,actor_id,monster_status_id) VALUES (15,8,9,4);
--18
INSERT INTO appearances (movie_id,monster_id,actor_id,monster_status_id) VALUES (15,10,7,4);
--19
INSERT INTO appearances (movie_id,monster_id,actor_id,monster_status_id) VALUES (16,8,9,4);
--20
INSERT INTO appearances (movie_id,monster_id,actor_id,monster_status_id) VALUES (16,10,7,4);
--21
INSERT INTO appearances (movie_id,monster_id,actor_id,monster_status_id) VALUES (17,8,9,4);
--22
INSERT INTO appearances (movie_id,monster_id,actor_id,monster_status_id) VALUES (17,10,7,4);
--23
INSERT INTO appearances (movie_id,monster_id,actor_id,monster_status_id) VALUES (15,11,10,4);
--24
INSERT INTO appearances (movie_id,monster_id,actor_id,monster_status_id) VALUES (16,11,10,4);
--25
INSERT INTO appearances (movie_id,monster_id,actor_id,monster_status_id) VALUES (17,11,10,4);
--26
INSERT INTO appearances (movie_id,monster_id,actor_id,monster_status_id) VALUES (18,8,11,2);
--27
INSERT INTO appearances (movie_id,monster_id,actor_id,monster_status_id) VALUES (19,8,12,4);
--28
INSERT INTO appearances (movie_id,monster_id,actor_id,monster_status_id) VALUES (20,8,12,4);
--29
INSERT INTO appearances (movie_id,monster_id,actor_id,monster_status_id) VALUES (21,1,13,4);
--29
INSERT INTO appearances (movie_id,monster_id,actor_id,monster_status_id) VALUES (22,1,7,4);
--30
INSERT INTO appearances (movie_id,monster_id,actor_id,monster_status_id) VALUES (23,1,7,4);
--30
INSERT INTO appearances (movie_id,monster_id,actor_id,monster_status_id) VALUES (24,1,7,4);
--31
INSERT INTO appearances (movie_id,monster_id,actor_id,monster_status_id) VALUES (25,1,14,4);
--32
INSERT INTO appearances (movie_id,monster_id,actor_id,monster_status_id) VALUES (26,1,15,4);
--33
INSERT INTO appearances (movie_id,monster_id,actor_id,monster_status_id) VALUES (27,1,16,4);
--34
INSERT INTO appearances (movie_id,monster_id,actor_id,monster_status_id) VALUES (28,1,17,4);
--35
INSERT INTO appearances (movie_id,monster_id,actor_id,monster_status_id) VALUES (29,12,18,1);
--36
INSERT INTO appearances (movie_id,monster_id,actor_id,monster_status_id) VALUES (30,13,19,1);
--37
INSERT INTO appearances (movie_id,monster_id,actor_id,monster_status_id) VALUES (31,14,19,1);
--38
INSERT INTO appearances (movie_id,monster_id,actor_id,monster_status_id) VALUES (32,13,18,1);
--39
INSERT INTO appearances (movie_id,monster_id,actor_id,monster_status_id) VALUES (33,13,22,1);
--40
INSERT INTO appearances (movie_id,monster_id,actor_id,monster_status_id) VALUES (34,11,15,1);
--41
INSERT INTO appearances (movie_id,monster_id,actor_id,monster_status_id) VALUES (35,11,15,1);
--42
INSERT INTO appearances (movie_id,monster_id,actor_id,monster_status_id) VALUES (36,11,15,1);
--43
INSERT INTO appearances (movie_id,monster_id,actor_id,monster_status_id) VALUES (37,11,7,1);
--44
INSERT INTO appearances (movie_id,monster_id,actor_id,monster_status_id) VALUES (38,11,21,1);
--45
INSERT INTO appearances (movie_id,monster_id,actor_id,monster_status_id) VALUES (39,15,22,1);

----------------------------------------

-- Mole People
INSERT INTO monster_powers (monster_id,power_id) VALUES (2,1);
INSERT INTO monster_powers (monster_id,power_id) VALUES (2,2);
INSERT INTO monster_powers (monster_id,power_id) VALUES (2,7);

-- Metaluna Mutant
INSERT INTO monster_powers (monster_id,power_id) VALUES (3,2);
INSERT INTO monster_powers (monster_id,power_id) VALUES (3,7);

-- Alligator Man
INSERT INTO monster_powers (monster_id,power_id) VALUES (4,3);
INSERT INTO monster_powers (monster_id,power_id) VALUES (4,7);

-- Audrey Junior
INSERT INTO monster_powers (monster_id,power_id) VALUES (5,4);

-- The Blob
INSERT INTO monster_powers (monster_id,power_id) VALUES (6,5);
INSERT INTO monster_powers (monster_id,power_id) VALUES (6,6);

-- Creature from the Black Lagoon
INSERT INTO monster_powers (monster_id,power_id) VALUES (7,7);
INSERT INTO monster_powers (monster_id,power_id) VALUES (7,8);
INSERT INTO monster_powers (monster_id,power_id) VALUES (7,9);

-- Frankenstein Monster
INSERT INTO monster_powers (monster_id,power_id) VALUES (8,7);
INSERT INTO monster_powers (monster_id,power_id) VALUES (8,8);

-- Wolf Man
INSERT INTO monster_powers (monster_id,power_id) VALUES (10,7);
INSERT INTO monster_powers (monster_id,power_id) VALUES (10,10);

-- Count Dracula
INSERT INTO monster_powers (monster_id,power_id) VALUES (11,4);
INSERT INTO monster_powers (monster_id,power_id) VALUES (11,10);
INSERT INTO monster_powers (monster_id,power_id) VALUES (11,13);
INSERT INTO monster_powers (monster_id,power_id) VALUES (11,12);

-- The Invisible Man
INSERT INTO monster_powers (monster_id,power_id) VALUES (12,11);

-- The Phantom of the Opera / 13

-- Quasimodo / 14

-- The Thing
INSERT INTO monster_powers (monster_id,power_id) VALUES (15,7);
INSERT INTO monster_powers (monster_id,power_id) VALUES (15,8);

----------------------------------------

-- The Mummy
INSERT INTO monster_natures (monster_id,nature_id) VALUES (1,1);
INSERT INTO monster_natures (monster_id,nature_id) VALUES (1,6);

-- The Mole People
INSERT INTO monster_natures (monster_id,nature_id) VALUES (2,2);
INSERT INTO monster_natures (monster_id,nature_id) VALUES (2,9);
INSERT INTO monster_natures (monster_id,nature_id) VALUES (2,7);
INSERT INTO monster_natures (monster_id,nature_id) VALUES (2,20);

-- Metaluna Mutant
INSERT INTO monster_natures (monster_id,nature_id) VALUES (3,3);
INSERT INTO monster_natures (monster_id,nature_id) VALUES (3,10);
INSERT INTO monster_natures (monster_id,nature_id) VALUES (3,9);
INSERT INTO monster_natures (monster_id,nature_id) VALUES (3,20);

-- Alligator Man
INSERT INTO monster_natures (monster_id,nature_id) VALUES (4,4);
INSERT INTO monster_natures (monster_id,nature_id) VALUES (4,15);
INSERT INTO monster_natures (monster_id,nature_id) VALUES (4,9);

-- Audrey Junior
INSERT INTO monster_natures (monster_id,nature_id) VALUES (5,4);
INSERT INTO monster_natures (monster_id,nature_id) VALUES (5,14);
INSERT INTO monster_natures (monster_id,nature_id) VALUES (5,19);

-- The Blob
INSERT INTO monster_natures (monster_id,nature_id) VALUES (6,3);
INSERT INTO monster_natures (monster_id,nature_id) VALUES (6,20);

-- Creature from the Black Lagoon
INSERT INTO monster_natures (monster_id,nature_id) VALUES (7,5);
INSERT INTO monster_natures (monster_id,nature_id) VALUES (7,15);
INSERT INTO monster_natures (monster_id,nature_id) VALUES (7,9);
INSERT INTO monster_natures (monster_id,nature_id) VALUES (7,20);

-- Frankenstein Monster
INSERT INTO monster_natures (monster_id,nature_id) VALUES (8,1);
INSERT INTO monster_natures (monster_id,nature_id) VALUES (8,4);

-- Bride of Frankenstein
INSERT INTO monster_natures (monster_id,nature_id) VALUES (9,1);
INSERT INTO monster_natures (monster_id,nature_id) VALUES (9,4);

-- Wolf Man
INSERT INTO monster_natures (monster_id,nature_id) VALUES (10,6);
INSERT INTO monster_natures (monster_id,nature_id) VALUES (10,12);
INSERT INTO monster_natures (monster_id,nature_id) VALUES (10,20);

-- Count Dracula
INSERT INTO monster_natures (monster_id,nature_id) VALUES (11,6);
INSERT INTO monster_natures (monster_id,nature_id) VALUES (11,11);

-- The Invisible Man
INSERT INTO monster_natures (monster_id,nature_id) VALUES (12,4);
INSERT INTO monster_natures (monster_id,nature_id) VALUES (12,17);
INSERT INTO monster_natures (monster_id,nature_id) VALUES (12,21);

-- The Phantom of the Opera
INSERT INTO monster_natures (monster_id,nature_id) VALUES (13,17);
INSERT INTO monster_natures (monster_id,nature_id) VALUES (13,18);
INSERT INTO monster_natures (monster_id,nature_id) VALUES (13,21);

-- Quasimodo
INSERT INTO monster_natures (monster_id,nature_id) VALUES (14,17);
INSERT INTO monster_natures (monster_id,nature_id) VALUES (14,18);

-- The Thing
INSERT INTO monster_natures (monster_id,nature_id) VALUES (15,3);
INSERT INTO monster_natures (monster_id,nature_id) VALUES (15,14);
INSERT INTO monster_natures (monster_id,nature_id) VALUES (15,19);

----------------------------------------

-- The Mummy
INSERT INTO monster_weaknesses (monster_id,weakness_id,weakness_type_id) VALUES (1,1,1);
INSERT INTO monster_weaknesses (monster_id,weakness_id,weakness_type_id) VALUES (1,2,2);

-- The Mole People
INSERT INTO monster_weaknesses (monster_id,weakness_id,weakness_type_id) VALUES (2,3,3);
INSERT INTO monster_weaknesses (monster_id,weakness_id,weakness_type_id) VALUES (2,5,4);

-- Metaluna Mutant
INSERT INTO monster_weaknesses (monster_id,weakness_id,weakness_type_id) VALUES (3,4,4);
INSERT INTO monster_weaknesses (monster_id,weakness_id,weakness_type_id) VALUES (3,5,4);

-- The Alligator Man / 4

-- Audrey Junior
INSERT INTO monster_weaknesses (monster_id,weakness_id,weakness_type_id) VALUES (5,6,1);

-- The Blob
INSERT INTO monster_weaknesses (monster_id,weakness_id,weakness_type_id) VALUES (6,7,1);
INSERT INTO monster_weaknesses (monster_id,weakness_id,weakness_type_id) VALUES (6,8,5);

-- The Creature from the Black Lagoon
INSERT INTO monster_weaknesses (monster_id,weakness_id,weakness_type_id) VALUES (7,9,1);
INSERT INTO monster_weaknesses (monster_id,weakness_id,weakness_type_id) VALUES (7,5,4);

-- The Frankenstein Monster
INSERT INTO monster_weaknesses (monster_id,weakness_id,weakness_type_id) VALUES (8,11,3);
INSERT INTO monster_weaknesses (monster_id,weakness_id,weakness_type_id) VALUES (8,19,1);
INSERT INTO monster_weaknesses (monster_id,weakness_id,weakness_type_id) VALUES (8,5,4);

-- The Bride of Frankenstein / 9

-- The Wolf Man
INSERT INTO monster_weaknesses (monster_id,weakness_id,weakness_type_id) VALUES (10,16,7);
INSERT INTO monster_weaknesses (monster_id,weakness_id,weakness_type_id) VALUES (10,15,2);
INSERT INTO monster_weaknesses (monster_id,weakness_id,weakness_type_id) VALUES (10,18,3);

-- Count Dracula
INSERT INTO monster_weaknesses (monster_id,weakness_id,weakness_type_id) VALUES (11,12,6);
INSERT INTO monster_weaknesses (monster_id,weakness_id,weakness_type_id) VALUES (11,14,3);
INSERT INTO monster_weaknesses (monster_id,weakness_id,weakness_type_id) VALUES (11,13,3);
INSERT INTO monster_weaknesses (monster_id,weakness_id,weakness_type_id) VALUES (11,6,1);
INSERT INTO monster_weaknesses (monster_id,weakness_id,weakness_type_id) VALUES (11,9,1);
INSERT INTO monster_weaknesses (monster_id,weakness_id,weakness_type_id) VALUES (11,17,2);

-- The Invisible Man / 12

-- The Phantom of the Opera
INSERT INTO monster_weaknesses (monster_id,weakness_id,weakness_type_id) VALUES (13,9,1);

-- Quasimodo
INSERT INTO monster_weaknesses (monster_id,weakness_id,weakness_type_id) VALUES (14,9,1);

-- The Thing
INSERT INTO monster_weaknesses (monster_id,weakness_id,weakness_type_id) VALUES (15,6,1);
INSERT INTO monster_weaknesses (monster_id,weakness_id,weakness_type_id) VALUES (15,8,5);
INSERT INTO monster_weaknesses (monster_id,weakness_id,weakness_type_id) VALUES (15,20,2);

----------------------------------------


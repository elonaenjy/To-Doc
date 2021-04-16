------------------------------------------------------------
--        Script SQLite  
------------------------------------------------------------


------------------------------------------------------------
-- Table: Project
------------------------------------------------------------
CREATE TABLE Project(
	id       INTEGER NOT NULL ,
	name     TEXT NOT NULL ,
	color    TEXT NOT NULL,
	CONSTRAINT Project_PK PRIMARY KEY (id)
);


------------------------------------------------------------
-- Table: Task
------------------------------------------------------------
CREATE TABLE Task(
	id                   INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT ,
	id_Project           INTEGER,	
	name                 TEXT NOT NULL ,
	creationTimestamp    NUMERIC NOT NULL ,

	,CONSTRAINT Task_Project_FK FOREIGN KEY (id_Project) REFERENCES Project(id)
);



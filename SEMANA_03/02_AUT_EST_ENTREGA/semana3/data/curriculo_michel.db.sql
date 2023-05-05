BEGIN TRANSACTION;
CREATE TABLE IF NOT EXISTS "pessoas" (
	"ID"	INTEGER,
	"nome"	TEXT NOT NULL,
	"cargo"	TEXT,
	PRIMARY KEY("ID" AUTOINCREMENT)
);
CREATE TABLE IF NOT EXISTS "formacoes" (
	"ID"	INTEGER,
	"pessoa_ID"	INTEGER NOT NULL,
	"instituicao"	TEXT NOT NULL,
	"curso"	TEXT NOT NULL,
	"inicio"	DATE,
	"fim"	DATE,
	FOREIGN KEY("pessoa_ID") REFERENCES "pessoas"("ID"),
	PRIMARY KEY("ID" AUTOINCREMENT)
);
CREATE TABLE IF NOT EXISTS "sobre_mim" (
	"ID"	INTEGER,
	"pessoa_ID"	INTEGER NOT NULL,
	"descricao"	TEXT NOT NULL,
	FOREIGN KEY("pessoa_ID") REFERENCES "pessoas"("ID"),
	PRIMARY KEY("ID" AUTOINCREMENT)
);
CREATE TABLE IF NOT EXISTS "experiencias" (
	"ID"	INTEGER,
	"pessoa_ID"	INTEGER NOT NULL,
	"empresa"	TEXT NOT NULL,
	"cargo"	TEXT NOT NULL,
	"inicio"	DATE,
	"fim"	DATE,
	"descricao"	TEXT,
	FOREIGN KEY("pessoa_ID") REFERENCES "pessoas"("ID"),
	PRIMARY KEY("ID" AUTOINCREMENT)
);
CREATE TABLE IF NOT EXISTS "realizacoes" (
	"ID"	INTEGER,
	"pessoa_ID"	INTEGER NOT NULL,
	"titulo"	TEXT NOT NULL,
	"descricao"	TEXT,
	FOREIGN KEY("pessoa_ID") REFERENCES "pessoas"("ID"),
	PRIMARY KEY("ID" AUTOINCREMENT)
);
CREATE TABLE IF NOT EXISTS "habilidades" (
	"ID"	INTEGER,
	"pessoa_ID"	INTEGER NOT NULL,
	"habilidade"	TEXT NOT NULL,
	FOREIGN KEY("pessoa_ID") REFERENCES "pessoas"("ID"),
	PRIMARY KEY("ID" AUTOINCREMENT)
);
INSERT INTO "pessoas" VALUES (1,'Ana Oliveira','Engenheira de Software');
INSERT INTO "formacoes" VALUES (1,1,'Faculdade ABC','Engenharia de Software','2016-01-01','2020-12-31');
INSERT INTO "sobre_mim" VALUES (1,1,'Sou uma engenheira de software comprometida em desenvolver soluções eficientes e inovadoras.');
INSERT INTO "experiencias" VALUES (1,1,'Tech Solutions','Engenheira de Software','2021-01-01','2023-03-31','Trabalhei no desenvolvimento e otimização de sistemas para diversos clientes.');
INSERT INTO "realizacoes" VALUES (1,1,'Certificação DEF','Obtive a certificação DEF em programação avançada.');
INSERT INTO "habilidades" VALUES (1,1,'Java');
INSERT INTO "habilidades" VALUES (2,1,'C++');
INSERT INTO "habilidades" VALUES (3,1,'Python');
INSERT INTO "habilidades" VALUES (4,1,'SQL');
COMMIT;

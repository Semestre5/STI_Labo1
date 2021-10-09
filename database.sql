----
-- Table structure for Compte
----
CREATE TABLE Compte (
	"login_name"	TEXT NOT NULL UNIQUE,
	"mot_de_passe"	TEXT NOT NULL,
	"est_valide"	BOOLEAN NOT NULL DEFAULT 1,
	"est_admin"	BOOLEAN NOT NULL DEFAULT 0,
	CONSTRAINT "PK_Compte" PRIMARY KEY("login_name")
);

INSERT INTO "Compte" ("login_name","mot_de_passe","est_valide","est_admin") VALUES ('Axel','Axel','1','1');
INSERT INTO "Compte" ("login_name","mot_de_passe","est_valide","est_admin") VALUES ('Axel1','Axel1','1','0');
INSERT INTO "Compte" ("login_name","mot_de_passe","est_valide","est_admin") VALUES ('Axel2','Axel2','1','0');



----
-- Table structure for Message
----
CREATE TABLE "Message" (
	"id" INTEGER PRIMARY KEY AUTOINCREMENT,
	"date_reception"	TEXT,
	"corps"	TEXT NOT NULL,
	"sujet"	TEXT NOT NULL,
	"login_name_expediteur"	INTEGER UNSIGNED NOT NULL,
	"login_name_destinataire"	INTEGER UNSIGNED NOT NULL,
	FOREIGN KEY("login_name_expediteur") REFERENCES "Compte"("login_name") ON UPDATE CASCADE,
	FOREIGN KEY("login_name_destinataire") REFERENCES "Compte"("login_name") ON UPDATE CASCADE
);

INSERT INTO "Message" ("date_reception", "corps", "sujet", "login_name_expediteur", "login_name_destinataire") VALUES ('nop', "corps1", "sujet1", 'Axel', 'Axel');


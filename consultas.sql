CREATE TABLE Alumnos(
	NIA CHAR(2) PRIMARY KEY,
   nombre VARCHAR(100) NOT NULL,
   usuario VARCHAR(50) NOT NULL UNIQUE,
   contraseña VARCHAR(255) NOT NULL,
	web VARCHAR(100) NOT NULL UNIQUE,
	jesuita VARCHAR(100) NOT NULL,
   frase VARCHAR(255) NOT NULL,
   archivo VARCHAR(100) NOT NULL UNIQUE
);

CREATE TABLE Mensaje(
	idMensaje SMALLINT PRIMARY KEY,
	mensaje VARCHAR(255) NOT NULL,
   fecha DATE NULL,
   idEmisor CHAR(2) NOT NULL,
   idReceptor CHAR(2) NOT NULL,
   
   CONSTRAINT csu_e_r UNIQUE(idEmisor, idReceptor),
   
  	CHECK chk_e_r CHECK(idEmisor<>idReceptor),
   
   CONSTRAINT fk_emisor FOREIGN KEY (idEmisor) REFERENCES Alumnos(NIA),
   CONSTRAINT fk_receptor FOREIGN KEY (idReceptor) REFERENCES Alumnos(NIA),
   
);
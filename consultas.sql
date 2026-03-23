CREATE TABLE Alumnos(
   NIA CHAR(2) PRIMARY KEY,
   nombre VARCHAR(100) NOT NULL,
   usuario VARCHAR(50) NOT NULL UNIQUE,
   contrasenia VARCHAR(255) NOT NULL,
   web VARCHAR(100) NOT NULL UNIQUE,
   jesuita VARCHAR(100) NOT NULL,
   frase VARCHAR(255) NOT NULL,
   archivo VARCHAR(100) NOT NULL UNIQUE
);

CREATE TABLE Mensaje(
   idMensaje SMALLINT PRIMARY KEY,
   mensaje VARCHAR(255) NOT NULL,
   fecha DATE,
   idEmisor CHAR(2) NOT NULL,
   idReceptor CHAR(2) NOT NULL,

   CONSTRAINT csu_e_r UNIQUE(idEmisor, idReceptor),

   CHECK (idEmisor <> idReceptor),

   CONSTRAINT fk_emisor FOREIGN KEY (idEmisor) REFERENCES Alumnos(NIA),
   CONSTRAINT fk_receptor FOREIGN KEY (idReceptor) REFERENCES Alumnos(NIA)
);

INSERT INTO Alumnos(NIA,nombre,usuario,contrasenia,web,jesuita,frase,archivo) VALUES
('00','Manuel','1daw_00','1234','manuel.es','San Ignacio de Loyola','Frase 00','archivo00.txt'),
('01','Samuel','1daw_01','1234','samuel.es','San Ignacio de Loyola','Frase 01','archivo01.txt'),
('02','Yehu','1daw_02','1234','yehu.es','San Ignacio de Loyola','Frase 02','archivo02.txt'),
('03','Jose Antonio','1daw_03','1234','jose.es','San Ignacio de Loyola','Frase 03','archivo03.txt'),
('04','Hugo','1daw_04','1234','hugo.es','San Ignacio de Loyola','Frase 04','archivo04.txt'),
('05','Francisco Javier Corchado','1daw_05','1234','corchado.es','San Ignacio de Loyola','Frase 05','archivo05.txt'),
('06','Javier Cumplido','1daw_06','1234','cumplido.es','San Ignacio de Loyola','Frase 06','archivo06.txt'),
('07','Rubi','1daw_07','1234','rubi.es','San Ignacio de Loyola','Frase 07','archivo07.txt'),
('08','Sergio Fuente','1daw_08','1234','sergiof.es','San Ignacio de Loyola','Frase 08','archivo08.txt'),
('09','Javier Garcia','1daw_09','1234','javierg.es','San Ignacio de Loyola','Frase 09','archivo09.txt'),
('10','Antonio','1daw_10','1234','antonio.es','San Ignacio de Loyola','Frase 10','archivo10.txt'),
('11','Angelo','1daw_11','1234','angelo.es','San Ignacio de Loyola','Frase 11','archivo11.txt'),
('12','Nicolas','1daw_12','1234','nicolas.es','San Ignacio de Loyola','Frase 12','archivo12.txt'),
('13','Aitor','1daw_13','1234','aitor.es','San Ignacio de Loyola','Frase 13','archivo13.txt'),
('14','Ivan Rodriguez','1daw_14','1234','ivan.es','San Ignacio de Loyola','Frase 14','archivo14.txt'),
('15','Teresa','1daw_15','1234','teresa.es','San Ignacio de Loyola','Frase 15','archivo15.txt'),
('16','Diego','1daw_16','1234','diego.es','San Ignacio de Loyola','Frase 16','archivo16.txt'),
('17','Francisco Medina','1daw_17','1234','medina.es','San Ignacio de Loyola','Frase 17','archivo17.txt'),
('18','Laura','1daw_18','1234','laura.es','San Ignacio de Loyola','Frase 18','archivo18.txt'),
('19','Sergio Poves','1daw_19','1234','poves.es','San Ignacio de Loyola','Frase 19','archivo19.txt'),
('20','Sara','1daw_20','1234','sara.es','San Ignacio de Loyola','Frase 20','archivo20.txt'),
('21','Carlos','1daw_21','1234','carlos.es','San Ignacio de Loyola','Frase 21','archivo21.txt'),
('22','Abraham','1daw_22','1234','abraham.es','San Ignacio de Loyola','Frase 22','archivo22.txt'),
('23','Daniel','1daw_23','1234','daniel.es','San Ignacio de Loyola','Frase 23','archivo23.txt'),
('24','Lucas','1daw_24','1234','lucas.es','San Ignacio de Loyola','Frase 24','archivo24.txt');
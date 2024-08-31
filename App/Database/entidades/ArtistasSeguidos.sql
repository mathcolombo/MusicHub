CREATE TABLE ArtistasSeguidos
(
    IdUsuario INT(10) NOT NULL,
    IdArtista INT(10) NOT NULL
);

ALTER TABLE ArtistasSeguidos
CHANGE COLUMN Id Id INT(10) AUTO_INCREMENT NOT NULL,
ADD CONSTRAINT Pk_ArtistasSeguidos
PRIMARY KEY(IdUsuario, IdArtista);

ALTER TABLE ArtistasSeguidos
ADD CONSTRAINT Fk_ArtistasSeguidos_Usuarios
FOREIGN KEY(IdUsuario) REFERENCES Usuarios(Id);

ALTER TABLE ArtistasSeguidos
ADD CONSTRAINT Fk_ArtistasSeguidos_Artistas
FOREIGN KEY(IdArtista) REFERENCES Artistas(Id);
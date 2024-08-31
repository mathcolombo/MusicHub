CREATE TABLE PlaylistsMusicas
(
    IdPlaylist INT(10) NOT NULL,
    IdMusica INT(10) NOT NULL
);

ALTER TABLE PlaylistsMusicas
CHANGE COLUMN Id Id INT(10) AUTO_INCREMENT NOT NULL,
ADD CONSTRAINT Pk_PlaylistsMusicas
PRIMARY KEY(IdPlaylist, IdMusica);

ALTER TABLE PlaylistsMusicas
ADD CONSTRAINT Fk_PlaylistsMusicas_Playlists
FOREIGN KEY(IdPlaylist) REFERENCES Playlists(Id);

ALTER TABLE PlaylistsMusicas
ADD CONSTRAINT Fk_PlaylistsMusicas_Musicas
FOREIGN KEY(IdMusica) REFERENCES Musicas(Id);
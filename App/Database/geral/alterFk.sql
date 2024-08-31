ALTER TABLE Albuns
ADD CONSTRAINT Fk_Albuns_Artistas
FOREIGN KEY(IdArtista) REFERENCES Artistas(Id);

ALTER TABLE ArtistasSeguidos
ADD CONSTRAINT Fk_ArtistasSeguidos_Usuarios
FOREIGN KEY(IdUsuario) REFERENCES Usuarios(Id);

ALTER TABLE ArtistasSeguidos
ADD CONSTRAINT Fk_ArtistasSeguidos_Artistas
FOREIGN KEY(IdArtista) REFERENCES Artistas(Id);

ALTER TABLE Musicas
ADD CONSTRAINT Fk_Musicas_Artistas
FOREIGN KEY(IdArtista) REFERENCES Artistas(Id);

ALTER TABLE Musicas
ADD CONSTRAINT Fk_Musicas_Albuns
FOREIGN KEY(IdAlbum) REFERENCES Albuns(Id);

ALTER TABLE Musicas
ADD CONSTRAINT Fk_Musicas_Generos
FOREIGN KEY(IdGenero) REFERENCES Generos(Id);

ALTER TABLE Playlists
ADD CONSTRAINT Fk_Playlists_Usuarios
FOREIGN KEY(IdUsuario) REFERENCES Usuarios(Id);

ALTER TABLE PlaylistsMusicas
ADD CONSTRAINT Fk_PlaylistsMusicas_Playlists
FOREIGN KEY(IdPlaylist) REFERENCES Playlists(Id);

ALTER TABLE PlaylistsMusicas
ADD CONSTRAINT Fk_PlaylistsMusicas_Musicas
FOREIGN KEY(IdMusica) REFERENCES Musicas(Id);
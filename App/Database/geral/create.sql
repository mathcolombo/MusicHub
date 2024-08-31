CREATE TABLE Usuarios
(
    Id INT(10) NOT NULL,
    Nome VARCHAR(100) NOT NULL,
    Email VARCHAR(150) NOT NULL,
    Senha VARCHAR(225) NOT NULL,
    DataCadastro DATETIME NOT NULL
);

CREATE TABLE Musicas
(
    Id INT(10) NOT NULL,
    Titulo VARCHAR(150) NOT NULL,
    IdArtista INT(10) NOT NULL,
    IdAlbum INT(10) NULL,
    IdGenero INT(10) NOT NULL,
    ArquivoAudio VARCHAR(255) NOT NULL,
    DataLancamento DATETIME NULL
);

CREATE TABLE Albuns
(
    Id INT(10) NOT NULL,
    Nome VARCHAR(100) NOT NULL,
    IdArtista INT(10) NOT NULL,
    ImagemCapa VARCHAR(255) NULL,
    DataLancamento DATETIME NULL
);

CREATE TABLE Playlists
(
    Id INT(10) NOT NULL,
    Nome VARCHAR(150) NOT NULL,
    IdUsuario INT(10) NOT NULL,
    DataCriacao DATETIME NOT NULL
);

CREATE TABLE Artistas
(
    Id INT(10) NOT NULL,
    Nome VARCHAR(100) NOT NULL,
    Biografia TEXT NULL,
    Imagem VARCHAR(255) NULL,
    DataCadastro DATETIME NOT NULL
);

CREATE TABLE PlaylistsMusicas
(
    IdPlaylist INT(10) NOT NULL,
    IdMusica INT(10) NOT NULL
);

CREATE TABLE ArtistasSeguidos
(
    IdUsuario INT(10) NOT NULL,
    IdArtista INT(10) NOT NULL
);

CREATE TABLE Generos
(
    Id INT(10) NOT NULL,
    Nome VARCHAR(50) NOT NULL 
);
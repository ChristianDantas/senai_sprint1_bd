USE Musica;

SELECT * FROM Artistas;
SELECT * FROM Estilos;
SELECT * FROM Albuns;
SELECT * FROM USuarios;
SELECT * FROM Albuns;
SELECT * FROM AlbunsEstilo;


-- listar todos os usuários administradores, sem exibir suas senhas

SELECT Usuarios.Nome, Usuarios.Email,Usuarios.Permissao FROM Usuarios
WHERE Usuarios.Permissao LIKE 'Administrador';

--listar todos os álbuns lançados após o um determinado ano de lançamento

SELECT Albuns.Titulo,Albuns.Ativo,Albuns.Localizacao,Albuns.DataLancamento,Albuns.QtdMinutos FROM Albuns

WHERE Albuns.DataLancamento > '%/2000';

--listar os dados de um usuário através do e-mail e senha
SELECT	Usuarios.Nome, Usuarios.Email,Usuarios.Permissao  From Usuarios

WHERE Usuarios.Email LIKE '%Chris@email.com.br';

--listar todos os álbuns ativos, mostrando o nome do artista e os estilos do álbum 
SELECT Albuns.Titulo, Artistas.Nome AS Artista,Estilos.Nome AS Estilo,Albuns.DataLancamento,Albuns.QtdMinutos,Albuns.Ativo,Albuns.Localizacao  FROM Albuns 
RIGHT JOIN AlbunsEstilo
ON Albuns.IdAlbum= AlbunsEstilo.IdAlbum
INNER JOIN Estilos
ON AlbunsEstilo.IdEstilo= Estilos.IdEstilo
LEFT JOIN Artistas
ON Albuns.IdArtista= Artistas.IdArtista
WHERE Albuns.Ativo LIKE '%Sim'
ORDER BY Artistas.Nome;




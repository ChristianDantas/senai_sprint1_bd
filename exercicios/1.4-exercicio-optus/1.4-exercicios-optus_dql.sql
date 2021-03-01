USE Musica;

SELECT * FROM Artistas;
SELECT * FROM Estilos;
SELECT * FROM Albuns;
SELECT * FROM USuarios;
SELECT * FROM Albuns;
SELECT * FROM AlbunsEstilo;


-- listar todos os usu�rios administradores, sem exibir suas senhas

SELECT Usuarios.Nome, Usuarios.Email,Usuarios.Permissao FROM Usuarios
WHERE Usuarios.Permissao LIKE 'Administrador';

--listar todos os �lbuns lan�ados ap�s o um determinado ano de lan�amento

SELECT Albuns.Titulo,Albuns.Ativo,Albuns.Localizacao,Albuns.DataLancamento,Albuns.QtdMinutos FROM Albuns

WHERE Albuns.DataLancamento > '%/2000';

--listar os dados de um usu�rio atrav�s do e-mail e senha
SELECT	Usuarios.Nome, Usuarios.Email,Usuarios.Permissao  From Usuarios

WHERE Usuarios.Email LIKE '%Chris@email.com.br';

--listar todos os �lbuns ativos, mostrando o nome do artista e os estilos do �lbum 
SELECT Albuns.Titulo, Artistas.Nome AS Artista,Estilos.Nome AS Estilo,Albuns.DataLancamento,Albuns.QtdMinutos,Albuns.Ativo,Albuns.Localizacao  FROM Albuns 
RIGHT JOIN AlbunsEstilo
ON Albuns.IdAlbum= AlbunsEstilo.IdAlbum
INNER JOIN Estilos
ON AlbunsEstilo.IdEstilo= Estilos.IdEstilo
LEFT JOIN Artistas
ON Albuns.IdArtista= Artistas.IdArtista
WHERE Albuns.Ativo LIKE '%Sim'
ORDER BY Artistas.Nome;




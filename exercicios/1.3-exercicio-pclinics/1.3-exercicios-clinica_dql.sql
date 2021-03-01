USE PetShop;

SELECT * FROM Clinicas;
SELECT * FROM Veterinarios;
SELECT * FROM TiposPets;
SELECT * FROM Racas;
SELECT * FROM Donos;
SELECT * FROM Pets;
SELECT * FROM Atendimentos;

-- listar todos os veterinários (nome e CRMV) de uma clínica (razão social)

SELECT  Veterinarios.Nome,Veterinarios.CRMV,Clinicas.RazaoSocial FROM Veterinarios
INNER JOIN Clinicas
ON Veterinarios.IdClinica= Clinicas.IdClinica
WHERE Veterinarios.IdClinica LIKE 2;

--listar todas as raças que começam com a letra S

SELECT Racas.Descricao From Racas

WHERE Racas.Descricao LIKE 's%';

--listar todos os tipos de pet que terminam com a letra O
SELECT TiposPets.Descricao From TiposPets

WHERE TiposPets.Descricao LIKE '%o';

--listar todos os pets mostrando os nomes dos seus donos

SELECT  Donos.Nome, Pets.Nome AS Pet FROM Pets 
INNER JOIN Donos
ON Donos.IdDono= Pets.IdDono;

--listar todos os atendimentos mostrando o nome do veterinário que atendeu, o nome, a raça e o tipo do pet que foi atendido, o nome do dono do pet e o nome da clínica onde o pet foi atendido

SELECT Veterinarios.Nome AS Veterinario, Pets.Nome AS Pet,TiposPets.Descricao AS Tipo , Racas.Descricao AS Raça, Donos.Nome,Clinicas.Nome AS Clinicas FROM Atendimentos 
RIGHT JOIN Pets
ON Pets.IdPet= Atendimentos.IdPet
INNER JOIN Donos
ON Donos.IdDono= Pets.IdDono
INNER JOIN Racas
ON Racas.IdRacas= Pets.IdRacas
INNER JOIN TiposPets
ON Racas.IdTipo= TiposPets.IdTipo
INNER JOIN Veterinarios
ON Veterinarios.IdVeterinario= Atendimentos.IdVeterinario
INNER JOIN Clinicas
ON Clinicas.IdClinica=Veterinarios.IdVeterinario
WHERE Atendimentos.IdAtendimento LIKE 1;



Veterinarios.Nome AS Veterinario     Clinicas.Nome AS Clinicas
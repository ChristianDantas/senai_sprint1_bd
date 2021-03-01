USE Musica;

INSERT INTO Artistas(Nome )
values               ('Jorge e Matheus')
					,('Bruno Mars')
					,('Matue');

INSERT INTO Estilos(Nome )
values               ('Pop')
					,('Trap')
					,('Sertanejo');

INSERT INTO Usuarios(Nome,Email,Senha,Permissao)
VALUES             ('Fernando','Fernando@gmail.com','143215','Comum')
					,('Kant','Kant@email.com.br','879654','Administrador')
					,('Bianca','Bianca@gmail.com','769854','Administrador')
					,('Christian','Chris@email.com.br','659873','Colaborador');

INSERT INTO Albuns(IdArtista,Titulo,DataLancamento,Localizacao,QtdMinutos,Ativo)
VALUES              (1,'Saudade dela','10/02/2018','Brasil','300','Sim')
					,(3,'Drogas e Lin','18/08/2019','Brasil','280','Sim')
					,(2,'Oh Yeah','05//02/2020','USA','200','Sim')
					,(1,'Nunca Mais','10/10/2009','Brasil','200','Nao')
					,(2,'NO,NO,NO','28/06/2013','USA','300','Nao');

INSERT INTO AlbunsEstilo(IdAlbum,IdEstilo)
VALUES              (1,3)
					,(3,1)
					,(5,1)
					,(2,2)
					,(4,3);



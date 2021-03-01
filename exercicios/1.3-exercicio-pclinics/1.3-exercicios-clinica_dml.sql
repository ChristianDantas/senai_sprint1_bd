USE PetShop;

INSERT INTO Clinicas(RazaoSocial,Endereco, CNPJ, Nome )
values               ('Cancer','Rua Antoni varozi 354','44443216','Venus')
					,('Cancer','Rua Vasconcelos 231','11234276','Jupiter');
INSERT INTO Clinicas(RazaoSocial,Endereco, CNPJ, Nome )
values				('Acidentes','Rua virginia franco 291','72763422','Vieger');



INSERT INTO Veterinarios(Nome,IdClinica, CRMV )
values               ('Lucas',2 ,'68734')
					,('Bruno', 1,'23476');

INSERT INTO Veterinarios(Nome,IdClinica, CRMV )
values               ('Duda',3 ,'68439');

INSERT INTO TiposPets(Descricao)
VALUES              ( 'Cachorro')
					,('Gato')
					,('Onitorrinco')
					,('Onça');

INSERT INTO Racas(Descricao,IdTipo)
VALUES              ('Sitsu',1)
					,('Salsicha',1)
					,('Pastor-Alemão', 1)
					,('Siberiano', 2)
					,('Siames', 2)
					,('Angorá', 2)
					,('Poodle', 1)
					,('Onça-Pintada', 3)
					,('Onça-Parda', 3)
					,('Onitorrinco', 4);

INSERT INTO Donos(Nome)
VALUES              ('Luana')
					,('Giovanni')
					,('Viana')
					,('Ruan')
					,('Alan');

INSERT INTO Pets(Nome,IdDono,IdRacas,DataNascimento)
values               ('Nico',1,3,'20/05/2013')
					,('Rex',1,7,'10/10/2015')
					,('sendry',2,4,'10/12/2017')
					,('vanila',2,5,'28/01/2020')
					,('renan',3,6,'15/01/2021')
					,('Antonio',5,9,'30/05/2014')
					,('Nico',5,10,'01/08/2017')
					,('Anderson',4,8,'22/06/2013');

INSERT INTO Atendimentos(IdPet,IdVeterinario,Descricao,DataConsulta)
VALUES              (2,1,'Tratamento de cancer','04/03/2020')
					,(6,3,'Acidente Incomum','04/03/2017')
					,(8,2,'Estado Terminal','22/02/2021');


UPDATE Veterinarios
SET CRMV= '68734'
WHERE IdClinica= 2;

UPDATE Veterinarios
SET CRMV='23476'
WHERE IdClinica= 1;


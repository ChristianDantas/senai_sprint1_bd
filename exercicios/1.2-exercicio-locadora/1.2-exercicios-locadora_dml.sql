USE Empresa;
INSERT INTO Empresas(Nome)
values               ('Senarth')
					('Thanks');
--DELETE FROM Empresas
--WHERE IdEmpresa =4;

INSERT INTO Marca       (Nome)
values               ('Riot')
					,('GMS');


INSERT INTO Clientes(Nome, Email)
values               ('Saulo', 'Saulo@gmail.com')
					,('Caique' ,'Caique@gmail.com');

INSERT INTO Modelos(IdMarca, Descricao)
VALUES              ( 3, 'Fiesta 2019')
					,(1 , 'Onix 2021');

INSERT INTO Veiculos(IdEmpresa, Placa,IdModelo)
VALUES              ( 3, 'RGER4598',2)
					,(1 , 'TEZA1654',3);

INSERT INTO Alugueis(IdVeiculo, DataDeInicio ,DataDeFim, IdCliente)
VALUES              ( 3, '25/10/2020','10/12/2020',1)
					,(4 , '10/11/2020','10/01/2020',2);





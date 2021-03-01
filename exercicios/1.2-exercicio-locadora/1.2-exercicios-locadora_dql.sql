USE Empresa;

SELECT * FROM Empresas;
SELECT * FROM Marca;
SELECT * FROM Clientes;
SELECT * FROM Modelos;
SELECT * FROM Veiculos;
SELECT * FROM Alugueis;

--listar todos os alugueis mostrando as datas de início e fim, o nome do cliente que alugou e nome do modelo do carro

SELECT   Clientes.Nome,Modelos.Descricao, Alugueis.DataDeInicio, Alugueis.DataDeFim FROM Veiculos
INNER JOIN Alugueis
ON Veiculos.IdVeiculo= Alugueis.IdVeiculo
INNER JOIN Clientes
ON Clientes.IdCliente= Alugueis.IdCliente
INNER JOIN Modelos
ON Modelos.IdModelo= Veiculos.IdModelo;

--listar os alugueis de um determinado cliente mostrando seu nome, as datas de início e fim e o nome do modelo do carro
SELECT  Clientes.Nome,Modelos.Descricao, Alugueis.DataDeInicio, Alugueis.DataDeFim FROM Veiculos 
INNER JOIN Alugueis
ON Veiculos.IdVeiculo= Alugueis.IdVeiculo
INNER JOIN Clientes
ON Clientes.IdCliente= Alugueis.IdCliente
INNER JOIN Modelos
ON Modelos.IdModelo= Veiculos.IdModelo
WHERE Clientes.IdCliente LIKE 1;


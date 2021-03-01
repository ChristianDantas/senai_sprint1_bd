CREATE DATABASE Empresa;

USE Empresa;

CREATE TABLE Empresas
(
IdEmpresa INT PRIMARY KEY IDENTITY
,Nome VARCHAR(200) NOT NULL
);
CREATE TABLE Marca
(
IdMarca INT PRIMARY KEY IDENTITY
,Nome VARCHAR(200)
);
CREATE TABLE Modelos
(
IdModelo INT PRIMARY KEY IDENTITY
,IdMarca INT FOREIGN KEY REFERENCES Marca
,Descricao VARCHAR(200)
);
CREATE TABLE Veiculos
(
IdVeiculo INT PRIMARY KEY IDENTITY
,IdModelo INT FOREIGN KEY REFERENCES Modelos
,IdEmpresa INT FOREIGN KEY REFERENCES Empresas
,Placa VARCHAR(200)
);
CREATE TABLE Clientes
(
IdCliente INT PRIMARY KEY IDENTITY
,Nome VARCHAR(200)
, Email VARCHAR(200)
);
CREATE TABLE Alugueis
(
IdAluguel INT PRIMARY KEY IDENTITY
,IdVeiculo INT FOREIGN KEY REFERENCES Veiculos
,IdCliente INT FOREIGN KEY REFERENCES Clientes
);
ALTER TABLE Alugueis
ADD DataDeInicio VARCHAR(200);

ALTER TABLE Alugueis
ADD DataDeFim VARCHAR(200);

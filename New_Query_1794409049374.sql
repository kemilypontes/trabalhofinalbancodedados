CREATE TABLE Produto 
( 
 id INT PRIMARY KEY,  
 preco DECIMAL(10, 2),  
 nome VARCHAR(100) NOT NULL,  
 categoria VARCHAR(50) NOT NULL,  
 descricao TEXT NOT NULL,  
 quantidade INT  
); 

CREATE TABLE Compra 
( 
 id INT PRIMARY KEY,  
 idCliente INT,  
 idEndereço INT,  
 forma_pagamento VARCHAR(75) NOT NULL,  
 data DATE NOT NULL,  
 valor_total INT   
); 

CREATE TABLE Cliente 
( 
 id INT PRIMARY KEY,  
 nome VARCHAR(100)NOT NULL,  
 cpf CHAR(11) NOT NULL,  
 celular VARCHAR(13) NOT NULL,  
 senha VARCHAR(50) NOT NULL,  
 email VARCHAR(75) NOT NULL 
); 

CREATE TABLE Endereço 
( 
 id INT PRIMARY KEY,  
 idCliente INT,  
 cidade VARCHAR(75) NOT NULL,  
 bairro VARCHAR(75) NOT NULL,  
 rua VARCHAR(75) NOT NULL,  
 numero VARCHAR(10) NOT NULL,  
 cep VARCHAR(9) NOT NULL,  
 estado CHAR(2) NOT NULL,  
 complemento VARCHAR(50) NOT NULL  
); 

CREATE TABLE possui 
( 
 id INT PRIMARY KEY,  
 Id INT ,  
 valor-unitario DECIMAL(10, 2),  
 quantidade INT  
);

ALTER TABLE Compra ADD FOREIGN KEY(idCliente) REFERENCES Cliente (idCliente);
ALTER TABLE Compra ADD FOREIGN KEY(idEndereço) REFERENCES Endereço (idEndereço);
ALTER TABLE Endereço ADD FOREIGN KEY(idCliente) REFERENCES Cliente (idCliente);
ALTER TABLE possui ADD FOREIGN KEY(id) REFERENCES Compra (id);
ALTER TABLE possui ADD FOREIGN KEY(Id) REFERENCES Produto (Id);

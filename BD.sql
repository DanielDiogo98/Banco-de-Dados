CREATE DATABASE etecmcm2;

USE etecmcm2;


/* Produtoslogicos: */

CREATE TABLE Produto (
    marca varchar(255),
    id_produto int PRIMARY KEY AUTO_INCREMENT,
    preco decimal(10,2),
    fk_Categorias_id_categoria int
);

CREATE TABLE Categorias (
    nome_cat varchar(255),
    id_categoria int PRIMARY KEY AUTO_INCREMENT
);
 
ALTER TABLE Produto ADD CONSTRAINT FK_Produto_2
    FOREIGN KEY (fk_Categorias_id_categoria)
    REFERENCES Categorias (id_categoria)
    ON DELETE RESTRICT;


CREATE DATABASE IF NOT EXISTS estoque;

USE estoque;

CREATE TABLE IF NOT EXISTS produtos (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(255) NOT NULL,
    quantidade INT NOT NULL,
    preco DECIMAL(10, 2) NOT NULL
);

INSERT INTO produtos (nome, quantidade, preco) VALUES
('Calça', 50, 199.99),
('Camiseta', 100, 399.99),
('Relógio', 40, 899.99);
CREATE TABLE clientes (
id_cliente INT AUTO_INCREMENT PRIMARY KEY, 
nome VARCHAR(100),
email VARCHAR(100),
telefone VARCHAR(20),
data_cadastro DATETIME  
);

CREATE TABLE produtos (
id_produto INT AUTO_INCREMENT PRIMARY KEY,
nome VARCHAR(100),
descricao VARCHAR(100),
preco DECIMAL(10,2),
estoque INT,
data_cadastro DATETIME   
);

CREATE TABLE vendedores (
id_vendedor INT AUTO_INCREMENT PRIMARY KEY,
nome VARCHAR(100),
email VARCHAR(100),
comissao DECIMAL (5,2)
);

CREATE TABLE vendas (
id_venda INT AUTO_INCREMENT PRIMARY KEY,
id_cliente INT,
id_vendedor INT,
data_venda DATE,
valor_total INT,

FOREIGN KEY (id_cliente) REFERENCES clientes(id_cliente),
FOREIGN KEY (id_vendedor) REFERENCES vendedores(id_vendedor)
);

CREATE TABLE itens_venda (
id_item INT AUTO_INCREMENT PRIMARY KEY,
id_venda INT,
id_produto INT,
quantidade INT,
preco_unitario DECIMAL(10,2),

FOREIGN KEY (id_venda) REFERENCES vendas(id_venda),
FOREIGN KEY (id_produto) REFERENCES produtos(id_produto)
);

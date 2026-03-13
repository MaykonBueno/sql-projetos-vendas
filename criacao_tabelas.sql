CREATE TABLE clientes (
id_cliente INT PRIMARY KEY,
nome VARCHAR(100),
email VARCHAR(100)
);

CREATE TABLE produtos (
id_produto INT PRIMARY KEY,
nome VARCHAR(100),
preco DECIMAL(10,2),
estoque INT
);

CREATE TABLE vendedores (
id_vendedor INT PRIMARY KEY,
nome VARCHAR(100)
);

CREATE TABLE vendas (
id_venda INT PRIMARY KEY,
id_cliente INT,
id_vendedor INT,
data_venda DATE,

FOREIGN KEY (id_cliente) REFERENCES clientes(id_cliente),
FOREIGN KEY (id_vendedor) REFERENCES vendedores(id_vendedor)
);

CREATE TABLE itens_venda (
id_item INT PRIMARY KEY,
id_venda INT,
id_produto INT,
quantidade INT,
preco_unitario DECIMAL(10,2),

FOREIGN KEY (id_venda) REFERENCES vendas(id_venda),
FOREIGN KEY (id_produto) REFERENCES produtos(id_produto)
);

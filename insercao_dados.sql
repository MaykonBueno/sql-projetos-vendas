INSERT INTO clientes (nome, email, telefone, data_cadastro)
VALUES
('João Silva', 'joao@email.com', '41999990001', '2024-01-10'),
('Maria Souza', 'maria@email.com', '41999990002', '2024-01-12'),
('Carlos Pereira', 'carlos@email.com', '41999990003', '2024-01-15');

INSERT INTO produtos (nome, descricao, preco, estoque, data_cadastro)
VALUES
('Notebook', 'Notebook 16GB RAM', 3500.00, 10, '2024-01-01'),
('Mouse', 'Mouse sem fio', 120.00, 50, '2024-01-02'),
('Teclado', 'Teclado mecânico', 250.00, 30, '2024-01-02');

INSERT INTO vendedores (nome, email, comissao)
VALUES
('Ana Costa', 'ana@empresa.com', 5.00),
('Bruno Lima', 'bruno@empresa.com', 4.50),
('Pedro Alves', 'pedro@empresa.com', 6.00);

INSERT INTO vendas (id_cliente, id_vendedor, data_venda, valor_total)
VALUES
(1, 1, '2024-02-01', 500.00),
(2, 2, '2024-02-02', 1200.00),
(3, 1, '2024-02-03', 300.00);

INSERT INTO itens_venda (id_venda, id_produto, quantidade, preco_unitario)
VALUES
(1, 2, 2, 120.00),
(1, 3, 1, 250.00),
(2, 1, 1, 3500.00);

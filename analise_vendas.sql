-- mês que mais vendeu
SELECT 
MONTH(v.data_venda) AS mes,
YEAR(v.data_venda) AS ano,
SUM(iv.quantidade * iv.preco_unitario) AS faturamento_total
FROM vendas v
JOIN itens_venda iv ON v.id_venda = iv.id_venda
GROUP BY ano, mes
ORDER BY faturamento_total DESC
LIMIT 1;

-- produto mais vendido
SELECT 
p.nome,
SUM(iv.quantidade) AS mais_vendido
FROM produtos p
JOIN itens_venda iv ON p.id_produto = iv.id_produto
GROUP BY p.id_produto, p.nome
ORDER BY mais_vendido DESC
LIMIT 1;

-- top clientes
SELECT
c.nome,
SUM(iv.quantidade * iv.preco_unitario) AS valor_total_gasto
FROM cliente c
JOIN vendas v ON c.id_cliente = v.id_cliente
JOIN  itens_venda iv ON v.id_venda = iv.id_venda 
GROUP BY c.id_cliente, c.nome
ORDER BY valor_total_gasto DESC
LIMIT 3;

-- ticket médio
SELECT 
SUM(iv.quantidade*iv.preco_unitario) / COUNT(DISTINCT v.id_venda) as ticket_medio
FROM vendas v
JOIN itens_vendas iv ON v.id_venda = iv.id_venda;

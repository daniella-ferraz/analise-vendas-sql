-- PROJETO 2: ANÁLISE DE VENDAS COM SQL
-- Autora: Daniella Ferraz

-- 1. Visualizar todas as vendas
SELECT *
FROM vendas;

-- 2. Faturamento total
SELECT SUM(faturamento) AS faturamento_total
FROM vendas;

-- 3. Faturamento por cidade
SELECT cidade, SUM(faturamento) AS total_vendas
FROM vendas
GROUP BY cidade
ORDER BY total_vendas DESC;

-- 4. Faturamento por categoria
SELECT categoria, SUM(faturamento) AS total_vendas
FROM vendas
GROUP BY categoria
ORDER BY total_vendas DESC;

-- 5. Produto com maior faturamento
SELECT produto, faturamento
FROM vendas
ORDER BY faturamento DESC
LIMIT 1;

-- 6. Vendas realizadas em São Paulo
SELECT *
FROM vendas
WHERE cidade = 'São Paulo';

-- 7. Vendas de São Paulo ou Santos
SELECT *
FROM vendas
WHERE cidade IN ('São Paulo', 'Santos');

-- 8. Produtos com preço entre R$ 25 e R$ 150
SELECT *
FROM vendas
WHERE preco BETWEEN 25 AND 150;

-- 9. Produtos que começam com a letra C
SELECT produto
FROM vendas
WHERE produto LIKE 'C%';

-- 10. Preço médio dos produtos
SELECT AVG(preco) AS preco_medio
FROM vendas;

-- 11. Maior venda
SELECT MAX(faturamento) AS maior_venda
FROM vendas;

-- 12. Menor venda
SELECT MIN(faturamento) AS menor_venda
FROM vendas;

-- 13. Quantidade de vendas
SELECT COUNT(*) AS quantidade_vendas
FROM vendas;

-- 14. Cidades sem repetição
SELECT DISTINCT cidade
FROM vendas;
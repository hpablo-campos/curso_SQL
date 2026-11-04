-- Qual categoria tem mais produtos vendidos?

SELECT 
        t2.DescCategoriaProduto AS categoria_produto,
        count(DISTINCT t1.idTransacao) AS vendas_produto

FROM transacao_produto AS t1

LEFT JOIN produtos as t2
ON t1.IdProduto = t2.IdProduto

GROUP BY categoria_produto
ORDER BY vendas_produto DESC
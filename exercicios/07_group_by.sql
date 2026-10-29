-- Qual o produto mais transacionado?

SELECT idProduto,
       sum(qtdeproduto) AS quantidade_transacoes

FROM transacao_produto

GROUP BY idProduto

ORDER BY 2 DESC

LIMIT 1
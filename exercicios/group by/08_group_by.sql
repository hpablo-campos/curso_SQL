-- Qual o produto com mais pontos transacionados?

SELECT idProduto,
       sum(vlProduto) AS soma_pontos 

FROM transacao_produto

GROUP BY idProduto

ORDER BY 2 DESC
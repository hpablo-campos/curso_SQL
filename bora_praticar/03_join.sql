--Qual mês tivemos mais lista de presença assinada?

SELECT 
        substr(t1.DtCriacao, 1, 7) AS transacoes_mes,
        count(DISTINCT t1.idtransacao)

FROM transacoes AS t1

INNER JOIN transacao_produto AS t2
ON t1.idtransacao = t2.idtransacao

INNER JOIN produtos AS t3
ON t2.idproduto = t3.idproduto

WHERE DescNomeProduto = 'Lista de presença'

GROUP BY 1

ORDER BY 2 DESC
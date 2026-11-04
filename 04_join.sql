-- Qual o total de pontos trocados no Stream Elements em Junho de 2025?

SELECT *

FROM transacoes AS t1

LEFT JOIN transacao_produto AS t2
ON t1.idtransacao = t2.idtransacao

LEFT JOIN produtos AS t3
ON t2.idproduto = t3.idproduto

WHERE substr(t1.DtCriacao, 1, 7) = '2025-06'

GROUP BY t1.DescSistemaOrigem
-- Quais clientes assinaram a lista de presença no dia 2025/08/25?

SELECT 
        t4.idcliente AS clientes

FROM transacoes AS t1

LEFT JOIN transacao_produto AS t2
ON t1.idtransacao = t2.idtransacao

LEFT JOIN produtos AS t3
ON t2.idproduto = t3.idproduto

LEFT JOIN clientes AS t4
ON t1.idcliente = t4.idcliente

WHERE substr(t1.DtCriacao, 1, 10) = '2025-08-25'
AND  t2.idproduto = 11

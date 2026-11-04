-- Quais clientes mais perderam pontos por Lover?

SELECT 
        t1.IdCliente,
        sum(t1.qtdepontos) AS total_pontos

FROM transacoes AS t1

LEFT JOIN transacao_produto AS t2
ON t1.idtransacao = t2.idtransacao

LEFT JOIN produtos AS t3
ON t2.idproduto = t3.idproduto

WHERE t3.DescCategoriaProduto = 'lovers'

GROUP BY 1
ORDER BY 2 

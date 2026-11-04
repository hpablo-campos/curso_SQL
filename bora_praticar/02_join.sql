--Em 2024, quantas transações de Lovers tivemos?

SELECT 
        count(DISTINCT t1.idTransacao) AS quantidade_transacoes

FROM transacoes AS t1

INNER JOIN transacao_produto AS t2
ON t1.idTransacao = t2.idTransacao

INNER JOIN produtos AS t3
ON t2.IdProduto = t3.IdProduto

WHERE t1.DtCriacao >= '2024-01-01'
AND t1.DtCriacao < '2025-01-01'
AND t3.DescCategoriaProduto = 'lovers'

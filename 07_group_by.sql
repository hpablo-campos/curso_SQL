SELECT IdCliente,
       sum(QtdePontos),
       count(IdTransacao)

FROM transacoes

WHERE DtCriacao >= '2026-07-01'
AND DtCriacao < '2026-08-01'

GROUP BY IdCliente
HAVING sum(QtdePontos) >= 4000
-- HAVING É O WHERE DO GROUP BY

ORDER BY sum(QtdePontos) DESC

LIMIT 10
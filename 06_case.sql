-- Intervalos:
-- De 0 a 500       -> Ponei
-- de 501 a 1000    -> Ponei Premium
-- de 1001 a 5000   -> Mago aprendiz
-- de 5001 a 10000  -> Mago mestre
-- + 10001          -> Mago supremo

SELECT idCliente,
       qtdePontos,
       CASE
            WHEN qtdePontos <= 500 THEN 'Ponei'
            WHEN qtdePontos <= 1000 THEN 'Ponei Premium'
            WHEN qtdePontos <= 5000 THEN 'Mago aprendiz'
            WHEN qtdePontos <= 10000 THEN 'Mago mestre'
            ELSE 'Mago supremo'
       END AS classificacao

FROM clientes

WHERE qtdePontos != 0

ORDER BY qtdePontos DESC

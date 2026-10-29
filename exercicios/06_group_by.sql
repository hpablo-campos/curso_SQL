--Qual dia da semana quem mais pedidos em 2025?

SELECT 
        CASE strftime( '%w', DtCriacao)
            WHEN '0' THEN 'domingo'
            WHEN '1' THEN 'segunda'
            WHEN '2' THEN 'terça'
            WHEN '3' THEN 'quarta'
            WHEN '4' THEN 'quinta'
            WHEN '5' THEN 'sexta'
            ELSE 'sábado'
        END AS dia_semana,
        count(*) AS quantidade_transacoes

FROM transacoes

WHERE DtCriacao >= '2025-01-01'
AND DtCriacao < '2026-01-01'

GROUP BY strftime( '%w', DtCriacao)

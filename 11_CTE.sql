-- COMMON TABLE EXPRESSION

WITH tb_cliente_primeiro_dia AS (

    SELECT DISTINCT idCliente
    FROM transacoes
    WHERE substr(dtCriacao, 1, 10) = '2025-08-25'

),

tb_cliente_ultimo_dia AS (

    SELECT DISTINCT idCliente
    FROM transacoes
    WHERE substr(dtCriacao, 1, 10) = '2025-08-29'

),

tb_join AS (

    SELECT t1.idCliente AS prim_dia,
           t2.idCliente AS ult_dia

    FROM tb_cliente_primeiro_dia AS t1
    LEFT JOIN tb_cliente_ultimo_dia AS t2
    ON t1.idCliente = t2.idCliente

)git

SELECT count(prim_dia),
       count(ult_dia),
       ROUND((1.0 * count(ult_dia) / count(prim_dia)) * 100, 2) AS taxa_porcentagem

FROM tb_join
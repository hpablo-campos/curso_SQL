-- Listar todas as transações adicionando uma coluna nova sinalizando
-- “alto”, “médio” e “baixo” para o valor dos pontos [<10 ; <500; >=500]

SELECT IdTransacao,
       QtdePontos,
       CASE
            WHEN QtdePontos < 10 THEN 'BAIXO'
            WHEN QtdePontos < 500 THEN 'MÉDIO'
            ELSE 'ALTO' 
        END AS classificacao

FROM transacoes

ORDER BY QtdePontos DESC
-- CONSULTA 1: TABELA CLIENTE 
-- Objetivo: mostra os clientes cujo nome começa com 'A'

SELECT id_cliente, nome, cpf
FROM Cliente
WHERE nome LIKE 'A%'
ORDER BY nome;


-- CONSULTA 2: TABELA PROJETO
-- Objetivo: mostra os projetos do cliente 1

SELECT id_projeto, nome
FROM Projeto
WHERE id_cliente = 1
ORDER BY nome;


-- CONSULTA 3: TABELA DESENVOLVEDOR
-- Objetivo: listar os desenvolvedores com custo acima de 80

SELECT id_desenvolvedor, nome, custo_por_hora
FROM Desenvolvedor
WHERE custo_por_hora > 80
ORDER BY custo_por_hora DESC;


-- CONSULTA 4: TABELA ALOCACAO
-- Objetivo: mostrar as alocações ativas após 01/02/2025

SELECT *
FROM Alocacao
WHERE data_de <= '2025-02-01' AND data_ate >= '2025-02-01'
ORDER BY data_ate;


-- CONSULTA 5: TABELA APONTAMENTO
-- Objetivo: apontamentos feitos em março de 2025

SELECT *
FROM Apontamento
WHERE inicio >= '2025-03-01'
ORDER BY inicio;

-- CONSULTA 6: AVG ou COUNT + GROUP BY
-- Objetivo: calcular média de custo por hora por categoria

SELECT 
    CASE WHEN custo_por_hora > 80 THEN 'Senior' ELSE 'Junior' END AS categoria,
    AVG(custo_por_hora) AS media_custo
FROM Desenvolvedor
GROUP BY categoria;

-- CONSULTA 7: INNER JOIN (2 tabelas)
-- Objetivo: listar projetos com o nome do seu cliente

SELECT Projeto.id_projeto, Projeto.nome, Cliente.nome AS cliente
FROM Projeto
INNER JOIN Cliente ON Cliente.id_cliente = Projeto.id_cliente;

-- CONSULTA 8: LEFT JOIN
-- Objetivo: mostrar desenvolvedores com ou sem alocação

SELECT Desenvolvedor.nome, Alocacao.id_projeto
FROM Desenvolvedor
LEFT JOIN Alocacao 
ON Desenvolvedor.id_desenvolvedor = Alocacao.id_desenvolvedor;


-- CONSULTA 9: INNER JOIN entre 3 tabelas
-- Objetivo: mostrar apontamentos com nome do dev, projeto e cliente

SELECT 
    Apontamento.id_apontamento,
    Desenvolvedor.nome AS desenvolvedor,
    Projeto.nome AS projeto,
    Cliente.nome AS cliente,
    Apontamento.inicio,
    Apontamento.fim
FROM Apontamento
INNER JOIN Desenvolvedor 
    ON Desenvolvedor.id_desenvolvedor = Apontamento.id_desenvolvedor
INNER JOIN Projeto 
    ON Projeto.id_projeto = Apontamento.id_projeto
INNER JOIN Cliente 
    ON Cliente.id_cliente = Projeto.id_cliente;

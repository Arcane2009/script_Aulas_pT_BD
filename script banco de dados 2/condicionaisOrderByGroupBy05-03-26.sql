#USO DA CONDIÇÃO ORDER BY

select sabor, embalagem from tabela_de_produtos;
select * from tabela_de_produtos order by PRECO_DE_LISTA, embalagem;

select * from tabela_de_produtos order by PRECO_DE_LISTA desc;

-- Qual ou quais foram as maiores vendas do produto "Linha Refrescante - 1 Litro - Morango/Limão" em QUANTIDADE e PRECO?

select * from tabela_de_produtos where NOME_DO_PRODUTO = 'Linha Refrescante - 1 Litro - Morango/Limão';
select * from itens_notas_fiscais where CODIGO_DO_PRODUTO = '1101035' order by QUANTIDADE desc, PRECO desc;

#Agurpando os resultados (GROUP BY)

select estado, sum(limite_de_credito) as limite_total from tabela_de_clientes group by estado;
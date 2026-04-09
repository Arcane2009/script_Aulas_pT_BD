#QUESTÃO 1
select * from tabela_de_vendedores where NOME = 'Cláudia Morais' and bairro = 'Jardins';
#RESPOSTA: Sim ela está de férias.

#QUESTÃO 2
select * from tabela_de_vendedores where PERCENTUAL_COMISSAO > 0.10 and DE_FERIAS = 1;
#RESPOSTA: Robert Martins é quem tem comissão maior a 0,10 e está de férias.

#QUESTÃO 3
select * from notas_fiscais where NUMERO = '00237' or DATA_VENDA = 12-01-2015;
#RESPOSTA: Porque um mesmo CPF pode ter várias compras, então a forma mais rápida e precisa de identificar a compra é pelo seu número único.

#QUESTÃO 4
select * from itens_notas_fiscais where QUANTIDADE >= 99 an

select * from tabela_de_vendedores where MATRICULA = 00236;
select * from tabela_de_produtos where CODIGO_DO_PRODUTO = '1101035';
#RESPOSTA: O cliente é o Valdeci da Silva, a vendedora foi a Cláudia Morais e o nome do produto é Linha Refrescante - 1 Litro - Morango/Limão e seu sabor é Morango/Limão.
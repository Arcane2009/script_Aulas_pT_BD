#Sub Query
#Notas fiscais emitidas do Márcio Almeida Silva
select * from notas_fiscais where MATRICULA = (select MATRICULA from tabela_de_vendedores where nome = "Márcio Almeida Silva"); 

select * from notas_fiscais as NF inner join tabela_de_vendedores as TV on NF.MATRICULA = TV.MATRICULA;

/* O volume_de_compra(tabela_de_clientes) é a quantidade(itens_notas_fiscais) é
o campo que representa a quantidade do produto comprado.
A partir da comparação do volume de compras e da quantidade é possivel
dizer se as vendas do mes foram validas ou invalidas
*/
#SELEÇÃO DAS COLUNAS DE INTERESSE
select * from tabela_de_clientes;
select * from itens_notas_fiscais;

select * from notas_fiscais as NF
inner join itens_notas_fiscais as INF
on NF.NUMERO = INF.NUMERO;

#SELEÇÃO DAS COLUNAS DE INTERESSE
select NF.CPF, NF.DATA_VENDA, INF.QUANTIDADE
from notas_fiscais as NF
inner join itens_notas_fiscais as INF
on NF.NUMERO = INF.NUMERO;

#Manipular a data (ano e mês)
select NF.CPF, DATE_FORMAT(NF.DATA_VENDA, '%Y-%m') as DATA_VENDA, INF.QUANTIDADE
from notas_fiscais as NF
inner join itens_notas_fiscais as INF
on NF.NUMERO = INF.NUMERO;

/*Obter o volume de compra da tabela clientes*/
select * from tabela_de_clientes;
select TC.CPF, TC.NOME, TC.VOLUME_DE_COMPRA AS QNTD_LIMITE FROM tabela_de_clientes AS TC;

#Soma para obter a quanntidade total
select NF.CPF, TC.NOME, 
SUM(TC.VOLUME_DE_COMPRA) AS VOLUME_COMPRA,
DATE_FORMAT(NF.DATA_VENDA, '%Y-%m') as DATA_VENDA,
sum(INF.QUANTIDADE) as QUANTIDADE
from notas_fiscais as NF
inner join itens_notas_fiscais as INF
on NF.NUMERO = INF.NUMERO
INNER JOIN tabela_de_clientes AS TC 
ON TC.CPF = NF.CPF
group by NF.CPF, DATA_VENDA;


select * from tabela_de_produtos where sabor = 'Manga' and tamanho = '3 ml';

select * from tabela_de_produtos where sabor = 'Manga' and not (tamanho = '470 ml');
select * from tabela_de_produtos where sabor = 'Manga' or not (tamanho = '470 ml');
select * from tabela_de_produtos where sabor in ('Manga', 'Laranja');

select * from tabela_de_clientes where cidade in ('Rio de Janeiro', 'São Paulo') and idade >= 20;

#USO DA CONDIÇÃO DISTINCT

select embalagem, tamanho from tabela_de_produtos;

select distinct embalagem, tamanho from tabela_de_produtos;

select distinct embalagem, tamanho, sabor, PRECO_DE_LISTA from tabela_de_produtos where sabor = 'Laranja';

#quais os bairros do RJ que tem clientes?

select distinct bairro, cidade, estado from tabela_de_clientes where cidade = 'Rio de Janeiro';

#testando a condição limit

select * from tabela_de_produtos limit 2,4;

#obtenha as 10 primeiras vendas do dia 01/01/2017

select * from notas_fiscais where data_venda = '2017-01-01' limit 10;


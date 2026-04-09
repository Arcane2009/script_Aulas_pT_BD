select * from tabela_de_produtos where sabor = 'Manga' and tamanho = '3 ml';

select * from tabela_de_produtos where sabor = 'Manga' and not (tamanho = '470 ml');
select * from tabela_de_produtos where sabor = 'M
, 'Laranja');

select * from tabela_de_clientes where cidade in ('Rio de Janeiro', 'São Paulo') and idade >= 20;
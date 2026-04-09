#Usando Case e End
/*Classificar o valor dos produtos*/
select NOME_DO_PRODUTO, PRECO_DE_LISTA,
case
	when preco_de_lista >= 14 then "PRODUTO CARO"
    when preco_de_lista < 14 then "PRODUTO EM CONTA"
    else "PRODUTO BARATO"
end as status_preco from tabela_de_produtos order by PRECO_DE_LISTA;

/*Veja o ano de nsacimento dos clientes e classifique-os como: Nsacidosantes de 1990 são velhos, 
nascidos entre 1990 e 1995 são jovens e nas
case
	when data_de_nascimento >= year(1995) then "Criança"
    when data_de_nascimento >= d datamento
end as status_idade from tabela_de_clorder by data_de_nascimento;*/
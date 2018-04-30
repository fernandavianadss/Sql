/*select t.num_identificacaocliente from telefone t,cliente c
where t.num_identificacaocliente = c.num_identificacao and (t.tipo='residencial' or t.tipo='comercial')


select t.num_identificacaocliente from telefone t join cliente c on
 t.num_identificacaocliente = c.num_identificacao where (t.tipo='residencial' or t.tipo='comercial')*/

 
/*select * from dvd where dt_compra > '13/07/12'*/


/*insert into cliente(num_identificacao, nome, logradouro, numero, complemento, bairro, cidade, uf, cep, dt_nasc, sexo) 
values (7, 'Fernando', 'Peçanha', 25, 'casa 01', '25 de agosto', 'Duque de caxias', 'RJ', '25051080', '19/012/1992', 'M')*/

 /*select nome from cliente where(sexo != 'F' and dt_nasc = '19/12/92')*/

 
/*select nome from cliente where(dt_nasc = '14/09/2012' and cidade= 'Duque de Caxias')*/

 
/*select nome, logradouro, numero, complemento, bairro, cidade, uf, cep from cliente where (dt_nasc > '31/12/1950')*/

/*select titulo, ano_producao from filme*/


/*select nacionalidade, sexo from diretor where dt_falecimento is null*/


/*select nome from cliente where extract ('DAY' from dt_nasc) = 14 and extract ('MONTH' from dt_nasc) = 09 and extract ('YEAR' from dt_nasc) < 2012 and cidade = 'Duque de Caxias';*/


/*select nome, dt_nasc, extract (year from age (cliente.dt_nasc)) from cliente*/


/*select nome, dt_nasc, extract (year from age (cliente.dt_nasc)) as "idade" from cliente*/


/*create view teste as select nome, dt_nasc, extract (year from age (cliente.dt_nasc)) as "idade" from cliente*/


/*select nome, logradouro, numero, complemento, bairro, cidade, uf, cep, extract ('year' from dt_nasc) = 1950 from cliente*/



/*select c.num_identificacao from cliente c,telefone t
where c.num_identificacao = t.num_identificacaocliente and (t.tipo='residencial' or t.tipo='comercial')*/



/*select c.num_identificacao from cliente c join telefone t on
(c.num_identificacao = t.num_identificacaocliente) where t.tipo='residencial' or t.tipo='comercial';*/

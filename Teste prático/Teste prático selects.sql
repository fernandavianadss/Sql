
select distinct cli.nome from cliente cli, conta_cliente cc, conta c, tipo t where cli.numero = cc.num_cli and cc.cod_conta = c.codigo and 
(select c.nome = 'Corrente' and cc.valor > 20000.00 and cc.dt_inicio > '01/01/1994')


select * from cliente cli, conta_cliente cc, conta c, funcionario f, tipo t where cli.numero = cc.num_cli and cc.cod_conta = c.codigo and t.codigo = f.tipo and 
(select c.nome = 'Corrente' and cc.valor > 10000 and cc.valor <= 90000 and f.nome = 'Asdrubal')


select distinct f.nome from funcionario f, tipo t, cliente cli, conta_cliente cc, conta c where cli.numero = cc.num_cli and cc.cod_conta = c.codigo and f.matricula = cc.gerente and t.nome = 'Gerente' and f.sexo = 'M' and not cli.uf = 'SP'

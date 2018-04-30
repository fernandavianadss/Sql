create table Cliente(
numero int, 
nome varchar(40),
sobrenome varchar(40),
telefone varchar (15),
sexo char(1),
uf char(2),
identidade varchar (11),
cpf varchar(11),
primary key (numero)
)


create table Tipo(
codigo int,
nome varchar(40),
valor_salario float,
primary key (codigo)
)


create table Conta(
codigo int,
nome varchar(40),
informacoes varchar(50),
fator_multiplicativo varchar(30),
primary key (codigo)
)


create table Funcionario(
tipo int references Tipo (codigo),
matricula int,
nome varchar(50),
tel_cel varchar(15),
sexo char(1),
primary key (matricula)
)



create table Conta_Cliente(
id int,
cod_conta int references Conta (codigo),
num_cli int references Cliente (numero),
valor float,
dt_inicio date,
gerente int references Funcionario (matricula),
primary key (id)
)
*/

insert into Cliente(numero, nome, sobrenome, telefone, sexo, uf, identidade, cpf)
values (1, 'João', 'Silva', '21 2543-9876', 'M', 'SP', '265561397', '17051008622')


insert into Cliente(numero, nome, sobrenome, telefone, sexo, uf, identidade, cpf)
values (2, 'Paulo', 'Santos', '21 2543-9882', 'M', 'RJ', '265561690', '17051008623')



insert into Cliente(numero, nome, sobrenome, telefone, sexo, uf, identidade, cpf)
values (3, 'Maria', 'Santos', '21 2543-9882', 'F', 'SP', '265561670', '17051008629')


insert into Tipo(codigo, nome, valor_salario)
values (3, 'Gerente', 2000)

insert into Tipo(codigo, nome, valor_salario)
values (4, 'Caixa', 1000)


insert into Tipo(codigo, nome, valor_salario)
values (5, 'Gerente', 2000)


insert into Funcionario(tipo, matricula, nome, tel_cel, sexo)
values(3, 1234, 'Carlos', '11 99765-4326', 'M')


insert into Funcionario(tipo, matricula, nome, tel_cel, sexo)
values(4, 1235, 'Ana', '11 99765-4329', 'F')


insert into Funcionario(tipo, matricula, nome, tel_cel, sexo)
values(5, 1236, 'Pedro', '11 99765-7326', 'M')


insert into Conta(codigo, nome, informacoes, fator_multiplicativo)
values(5, 'Corrente', 'Unigranrio', null)


insert into Conta(codigo, nome, informacoes, fator_multiplicativo)
values(7, 'Corrente', 'Estagio', null)


insert into Conta(codigo, nome, informacoes, fator_multiplicativo)
values(6, 'Corrente', 'Subway', null)

insert into Conta_Cliente(id, cod_conta, num_cli, valor, dt_inicio, gerente)
values(2, 5, 1, 10.00000, '01/01/1994', 1234)


insert into Conta_Cliente(id, cod_conta, num_cli, valor, dt_inicio, gerente)
values(3, 6, 2, 90.00000, '01/01/1999', 1235)


insert into Conta_Cliente(id, cod_conta, num_cli, valor, dt_inicio, gerente)
values(4, 7, 3, 80.00000, '01/02/2000', 1236)


alter table Tipo add descricao varchar(30)

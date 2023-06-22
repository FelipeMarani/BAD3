use master if exists(select * from SYS.databases where name = 'Funcionario')
drop database Funcionario

create database Funcionario
go

use Funcionario
go

Create table TB_Funcionario(
	COD_Func int PRIMARY KEY Identity,
	Nome varchar(80)not null,
	Filial varchar(20),
	Cod_Depto int,
	Cod_Cargo int,
	Data_Adimissao datetime,
	Salario decimal(10,2),
	Dependentes decimal(10,0),
	CPF char(11),
)

create table TB_Depto(
	COD_DEPTO INT IDENTITY(10,10) PRIMARY KEY,
	Nome_Depto Varchar(20),
	COD_Func int,
		foreign key(COD_Func)
			references TB_Funcionario(COD_Func)
)

create table TB_Cargo(
	COD_Cargo int PRIMARY KEY identity,
	Nome_Cargo varchar(20),
	COD_DEPTO int,
		foreign key(COD_DEPTO)
		references TB_Depto(COD_DEPTO)
)

INSERT INTO TB_Funcionario(Nome, Filial, Cod_Depto, Cod_Cargo, Data_Adimissao, Salario, Dependentes, CPF) 
Values ('Sandro Luiz', 'São Paulo', 10, 1, 1999-07-23 , 6500.00, 1, '58789190017' )
go
INSERT INTO TB_Funcionario(Nome, Filial, Cod_Depto, Cod_Cargo, Data_Adimissao, Salario, Dependentes, CPF) 
Values ('Gerson Sanches', 'Campinas', 20, 2, 1995-01-02, 2335.90, 2, '43839805031' )
go
INSERT INTO TB_Funcionario(Nome, Filial, Cod_Depto, Cod_Cargo, Data_Adimissao, Salario, Dependentes, CPF) 
Values ('Cristina Maia', 'Florianópolis', 30, 3, 2000-07-01, 3300.70, 1, '53924945012' )
go
INSERT INTO TB_Funcionario(Nome, Filial, Cod_Depto, Cod_Cargo, Data_Adimissao, Salario, Dependentes, CPF) 
Values ('Carla Fantim', 'São Paulo', 40, 4, 1991-05-12, 6500.00, 1, '71688033017' )
go
INSERT INTO TB_Funcionario(Nome, Filial, Cod_Depto, Cod_Cargo, Data_Adimissao, Salario, Dependentes, CPF) 
Values ('Débora Schwartz', 'Uberaba', 50, 5,  1998-05-12, 6500.00, 1, '53962549404' )
go
INSERT INTO TB_Funcionario(Nome, Filial, Cod_Depto, Cod_Cargo, Data_Adimissao, Salario, Dependentes, CPF) 
Values ('Sandra Rodrigues', 'Campinas', 60, 6,  1991-05-12, 5500.00, 2, '52827468301' )
go
INSERT INTO TB_Funcionario(Nome, Filial, Cod_Depto, Cod_Cargo, Data_Adimissao, Salario, Dependentes, CPF) 
Values ('Débora Spindola', 'Florianópolis', 70, 1,  2001-03-12, 4500.00, 1, '22586634071' )
go
INSERT INTO TB_Funcionario(Nome, Filial, Cod_Depto, Cod_Cargo, Data_Adimissao, Salario, Dependentes, CPF) 
Values ('Gerson Santana', 'Campinas', 10, 1, 1991-05-12, 6500.00, 1, '01227891059' )
go
INSERT INTO TB_Funcionario(Nome, Filial, Cod_Depto, Cod_Cargo, Data_Adimissao, Salario, Dependentes, CPF) 
Values ('Rodrigo Ruiz', 'São Paulo', 20, 2,  2002-11-03, 3000.70, 1, '55206493082' )
go
INSERT INTO TB_Funcionario(Nome, Filial, Cod_Depto, Cod_Cargo, Data_Adimissao, Salario, Dependentes, CPF) 
Values ('Julio Almeida', 'Florianópolis', 30, 3, 1991-05-12 , 6500.00, 3, '60666901082' )
go
INSERT INTO TB_Funcionario(Nome, Filial, Cod_Depto, Cod_Cargo, Data_Adimissao, Salario, Dependentes, CPF) 
Values ('José Triburca', 'Campinas', 40, 4, 1991-05-12 , 3471.80, 1, '19855951093' )
go
INSERT INTO TB_Funcionario(Nome, Filial, Cod_Depto, Cod_Cargo, Data_Adimissao, Salario, Dependentes, CPF) 
Values ('Pedro Santanella', 'São Paulo', 50, 5,  1994-10-31, 6500.00, 1, '65685628072' )
go
INSERT INTO TB_Funcionario(Nome, Filial, Cod_Depto, Cod_Cargo, Data_Adimissao, Salario, Dependentes, CPF) 
Values ('Rafaela Mendes', 'Uberaba', 60, 6,  1991-05-12, 2760.30, 1, '16918757083' )
go
INSERT INTO TB_Funcionario(Nome, Filial, Cod_Depto, Cod_Cargo, Data_Adimissao, Salario, Dependentes, CPF) 
Values ('Edineusa Martins', 'Campinas', 70, 1, 2013-12-09 , 3300.80, 2, '04323725043' )
go
INSERT INTO TB_Funcionario(Nome, Filial, Cod_Depto, Cod_Cargo, Data_Adimissao, Salario, Dependentes, CPF) 
Values ('Saulo Ramos', 'São Paulo', 10, 1, 1991-05-12 , 1200.00, 2, '06607295045' )
go
INSERT INTO TB_Funcionario(Nome, Filial, Cod_Depto, Cod_Cargo, Data_Adimissao, Salario, Dependentes, CPF) 
Values ('Edmundo Santos', 'Uberaba', 20, 2, 1994-04-03 , 3500.00, 1, '96936192009' )
go
INSERT INTO TB_Funcionario(Nome, Filial, Cod_Depto, Cod_Cargo, Data_Adimissao, Salario, Dependentes, CPF) 
Values ('Paulo Marcio', 'Florianópolis', 30, 3, 2015-11-02 , 5700.00, 1, '40704147033' )
go
INSERT INTO TB_Funcionario(Nome, Filial, Cod_Depto, Cod_Cargo, Data_Adimissao, Salario, Dependentes, CPF) 
Values ('Arlete Mourão', 'São Paulo', 40, 4, 1991-05-12 , 3400.00, 1, '76830160049' )
go
INSERT INTO TB_Funcionario(Nome, Filial, Cod_Depto, Cod_Cargo, Data_Adimissao, Salario, Dependentes, CPF) 
Values ('Rosália Souza', 'Sorocaba', 50, 5, 2017-10-13 , 4050.76, 1, '81198434015' )
go
INSERT INTO TB_Funcionario(Nome, Filial, Cod_Depto, Cod_Cargo, Data_Adimissao, Salario, Dependentes, CPF) 
Values ('Samuel Rosa', 'Araraquara', 60, 6, 1991-05-12 , 2600.45, 1, '97869353060' )
go
INSERT INTO TB_Funcionario(Nome, Filial, Cod_Depto, Cod_Cargo, Data_Adimissao, Salario, Dependentes, CPF) 
Values ('Samuel Rosa', 'Muzambinho', 70, 1, 2000-05-12 , 6500.00, 1, '65641635090' )
go
INSERT INTO TB_Funcionario(Nome, Filial, Cod_Depto, Cod_Cargo, Data_Adimissao, Salario, Dependentes, CPF) 
Values ('Justo Ribeiro', 'Sorocaba', 10, 1,  1991-05-12, 6500.00, 1, '75641635110' )
go

--select * from TB_Funcionario

INSERT INTO TB_Depto (Nome_Depto, COD_Func) Values ('Almoxarifado', 1)
go
INSERT INTO TB_Depto (Nome_Depto, COD_Func) Values ('Manutenção', 2)
go
INSERT INTO TB_Depto (Nome_Depto, COD_Func) Values ('RH', 3)
go
INSERT INTO TB_Depto (Nome_Depto, COD_Func) Values ('Suporte', 4)
go
INSERT INTO TB_Depto (Nome_Depto, COD_Func) Values ('Vendas', 5)
go
INSERT INTO TB_Depto (Nome_Depto, COD_Func) Values ('Marketing', 6)
go
INSERT INTO TB_Depto (Nome_Depto, COD_Func) Values ('Relacionamento', 7)
go

--select * from TB_Depto

INSERT INTO TB_Cargo(Nome_Cargo, COD_Depto) Values ('Almoxarife', 10)
go
INSERT INTO TB_Cargo(Nome_Cargo, COD_Depto) Values ('Mecânico', 20)
go
INSERT INTO TB_Cargo(Nome_Cargo, COD_Depto) Values ('Eletricista', 30)
go
INSERT INTO TB_Cargo(Nome_Cargo, COD_Depto) Values ('Assistente RH', 40)
go
INSERT INTO TB_Cargo(Nome_Cargo, COD_Depto) Values ('Analista', 50)
go
INSERT INTO TB_Cargo(Nome_Cargo, COD_Depto) Values ('Vendedor', 60)
go

select * from TB_Funcionario
USE master IF EXISTS(SELECT * FROM sys.databases WHERE NAME='ALUNO')
DROP DATABASE ALUNO
GO

CREATE DATABASE ALUNO
GO

USE ALUNO
GO

CREATE TABLE TB_ALUNO(
	CODALUNO INT IDENTITY PRIMARY KEY,
	NOME VARCHAR(40),
	CURSO VARCHAR(20),
	TURMA VARCHAR(30),
	MENSALIDADE DECIMAL(10,2),
	DATANASC DATETIME
)

INSERT INTO  TB_ALUNO VALUES ('Pedro', 'Eletrônica', 'ELE1AN', 250.00, '01/12/1980')
GO
INSERT INTO TB_ALUNO VALUES ('Selma Bartoretto', 'Eletrônica', 'ELE1AN', 250.00, '16/05/1985')
GO
INSERT INTO TB_ALUNO VALUES ('Julio Barros', 'Informática', 'INF1AN', 250.00, '16/05/1982')
GO
INSERT INTO TB_ALUNO VALUES ('Sandra Spec', 'Informática', 'INF2AN', 150.00, '03/04/2000')
GO
INSERT INTO TB_ALUNO VALUES ('Debora Fasano', 'Edificações', 'EDF3BN', 180.00, '17/06/2002')
GO
INSERT INTO TB_ALUNO VALUES ('Augusto Romano', 'Redes', 'IRD1AM', 180.00, '22/08/2004')
GO
INSERT INTO TB_ALUNO VALUES ('Leticia Fontes', 'Redes', 'IRD2AT', 200.00, '09/03/2005')
GO
INSERT INTO TB_ALUNO VALUES ('Rodrigo Santana', 'Edificações', 'EDF3BN', 150.00, '02/02/2003')
GO
INSERT INTO TB_ALUNO VALUES ('Jorge Salgueiro', 'Eletrônica', 'ELE2AN', 200.00, '07/09/1985')
GO
INSERT INTO TB_ALUNO VALUES ('Joana Prado', 'Eletrônica', 'ELE2AN', 200.00, '12/07/1987')
GO
INSERT INTO TB_ALUNO VALUES ('Carla Zulmeto', 'Informática', 'INF1AN', 190.00, '05/08/1984')
GO
INSERT INTO TB_ALUNO VALUES('Jeferson Oliveira', 'Informática', 'INF1AN', 220.00, '02/09/1990')
GO
INSERT INTO TB_ALUNO VALUES ('Carlos Torres', 'Redes', 'IRD1AM', 220.00, '03/09/2004')
GO
INSERT INTO TB_ALUNO VALUES ('Gerson Brandão', 'Redes', 'IRD1AM', 220.00, '02/10/2004')
GO
INSERT INTO TB_ALUNO VALUES ('Juliana Marques', 'Redes', 'IRD2AT', 1800.00, '15/10/2005')

--SELECT CODALUNO, NOME, CURSO, DATANASC FROM TB_ALUNO

SELECT DATEDIFF(DAY, '23/11/2005', GETDATE())
 --SELECT CURRENT_TIMESTAMP;

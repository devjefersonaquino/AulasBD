## Conceitual

- Levantamento de Requisitos
- Regras de Negócio

## Lógica

- Documentar como os dados serão armazenados, tipos de dados.

## Física

-- SQL 

- DDL (Linguagem de Definição de Dados) 
        SELECT 
        INSERT 
        UPDATE
        DELETE
        MERGE
        BULK INSET

- DML (Linguagem de Manipulação de Dados)
        ALTER 
        CREATE 
        DROP 
        DISABLE TRIGGER 
        ENABLE TRIGGER 
        TRUNCATE TABLE
        UPDATE STATISTICS 

- DCL	(Linguagem de Controle de Dados)
        GRANT
        REVOKE
        DENY

-----------------------------------
## SQL

-- CREATE DATABASE
CREATE database fatec;

-- CREATE USER
CREATE USER 'jeferson'@'localhost' IDENTIFIED BY 'totvs@123';

-- PRIVILEGIOS
grant all privileges on *.* to 'jeferson'@'localhost' with grant option;
- Apagar usuário
DROP USER 'username'@'localhost';

-- CREATE TABLE
CREATE TABLE alunos (
      id_aluno int PRIMARY KEY AUTO_INCREMENT,  
      situacao char (7),
      sexo char (1),
      data_matricula date,
      idade int,
      nome varchar (50),
      endereco varchar (50),
      valor_pago_curso float (10,2),
      ra int      
);

-- ALTER TABLE
ALTER TABLE fatec_aluno add column cidade varchar(30);
ALTER TABLE fatec_aluno add column estado varchar(2);

-- INSERT
INSERT INTO fatec_aluno (situacao, sexo, data_matricula, idade, nome, endereco, valor_pago_curso, ra, cidade, estado) 
VALUES ('ativo', 'M', '2022-04-07',27, 'Jeferson', 'Avenida da Integracao, 370', 500.00, 340,' Assis', 'SP');

INSERT INTO fatec_aluno (situacao, sexo, data_matricula, idade, nome, endereco, valor_pago_curso, ra, cidade, estado) 
VALUES ('ativo', 'M', '2022-04-07',27, 'Andre', 'Avenida da Integracao, 370', 500.00, 350,' Assis', 'SP');

INSERT INTO fatec_aluno (situacao, sexo, data_matricula, idade, nome, endereco, valor_pago_curso, ra, cidade, estado) 
VALUES ('ativo', 'M', '2022-04-07',27, 'Joao', 'Avenida da Integracao, 370', 500.00, 360,' Assis', 'SP');

INSERT INTO fatec_aluno (situacao, sexo, data_matricula, idade, nome, endereco, valor_pago_curso, ra, cidade, estado) 
VALUES ('ativo', 'M', '2022-04-07',27, 'Jose', 'Avenida da Integracao, 370', 500.00, 370,' Assis', 'SP');

INSERT INTO fatec_aluno (situacao, sexo, data_matricula, idade, nome, endereco, valor_pago_curso, ra, cidade, estado) 
VALUES ('ativo', 'M', '2022-04-07',27, 'Fernando', 'Avenida da Integracao, 370', 500.00, 380,' Assis', 'SP');

INSERT INTO fatec_aluno (situacao, sexo, data_matricula, idade, nome, endereco, valor_pago_curso, ra, cidade, estado) 
VALUES ('ativo', 'M', '2022-04-07',27, 'Felipe', 'Avenida da Integracao, 370', 500.00, 390,' Assis', 'SP');

INSERT INTO fatec_aluno (situacao, sexo, data_matricula, idade, nome, endereco, valor_pago_curso, ra, cidade, estado) 
VALUES ('ativo', 'M', '2022-04-07',27, 'Gabriel', 'Avenida da Integracao, 370', 500.00, 400,' Assis', 'SP');

INSERT INTO fatec_aluno (situacao, sexo, data_matricula, idade, nome, endereco, valor_pago_curso, ra, cidade, estado) 
VALUES ('ativo', 'M', '2022-04-07',27, 'Matheus', 'Avenida da Integracao, 370', 500.00, 410,' Assis', 'SP');

INSERT INTO fatec_aluno (situacao, sexo, data_matricula, idade, nome, endereco, valor_pago_curso, ra, cidade, estado) 
VALUES ('ativo', 'M', '2022-04-07',27, 'Anderson', 'Avenida da Integracao, 370', 500.00, 420,' Assis', 'SP');

INSERT INTO fatec_aluno (situacao, sexo, data_matricula, idade, nome, endereco, valor_pago_curso, ra, cidade, estado) 
VALUES ('ativo', 'M', '2022-04-07',27, 'Savio', 'Avenida da Integracao, 370', 500.00, 430,' Assis', 'SP');

INSERT INTO fatec_aluno (situacao, sexo, data_matricula, idade, nome, endereco, valor_pago_curso, ra, cidade, estado) 
VALUES ('ativo', 'M', '2022-04-07',27, 'Anastacio', 'Avenida da Integracao, 370', 500.00, 440,' Assis', 'SP');

INSERT INTO fatec_aluno (situacao, sexo, data_matricula, idade, nome, endereco, valor_pago_curso, ra, cidade, estado) 
VALUES ('ativo', 'M', '2022-04-07',27, 'Diogo', 'Avenida da Integracao, 370', 500.00, 450,' Assis', 'SP');

INSERT INTO fatec_aluno (situacao, sexo, data_matricula, idade, nome, endereco, valor_pago_curso, ra, cidade, estado) 
VALUES ('ativo', 'M', '2022-04-07',27, 'Dieto', 'Avenida da Integracao, 370', 500.00, 460,' Assis', 'SP');

INSERT INTO fatec_aluno (situacao, sexo, data_matricula, idade, nome, endereco, valor_pago_curso, ra, cidade, estado) 
VALUES ('ativo', 'M', '2022-04-07',27, 'Mané', 'Avenida da Integracao, 370', 500.00, 700,' Assis', 'SP');

-- SELECT

SELECT nome, ra FROM fatec_aluno;

-- UPDATE

UPDATE fatec_aluno SET ra = '340' WHERE nome = 'Dayane';

-- DELETE

DELETE FROM fatec_aluno WHERE ra = 300;

--CRIAR PK - SIMPLES
ALTER TABLE fatec_aluno add column id_aluno int PRIMARY KEY AUTO_INCREMENT;

use master
go

CREATE DATABASE CadastroIdealDB
go

USE CadastroIdealDB
go

DROP TABLE IF EXISTS Pessoas
CREATE TABLE Pessoas(
	ID INT IDENTITY PRIMARY KEY,
	Nome VARCHAR(30),
	Sobrenome VARCHAR(30),
	Telefone CHAR(11)
)
go

DROP PROCEDURE IF EXISTS PessoaInsert
go
CREATE PROCEDURE PessoaInsert(
	@Nome VARCHAR(30),
	@Sobrenome VARCHAR(30),
	@Telefone CHAR(11)
)
as
	INSERT INTO Pessoas (Nome, Sobrenome, Telefone)
		VALUES (@Nome, @Sobrenome, @Telefone)
go

exec PessoaInsert 'Richard', 'Marx', '11-2222-3333'
exec PessoaInsert 'Sinead', 'O''Connor', '11-4444-5555'
exec PessoaInsert 'Tina', 'Turner', '11-6666-7777'
exec PessoaInsert 'Laura', 'Branigan', '11-9999-7777'
go

DROP PROCEDURE IF EXISTS PessoaUpdate
go
CREATE PROCEDURE PessoaUpdate(
	@ID INT,
	@Nome VARCHAR(30),
	@Sobrenome VARCHAR(30),
	@Telefone CHAR(11)
)
as
	UPDATE Pessoas
	SET Nome = @Nome,
		Sobrenome = @Sobrenome,
		Telefone = @Telefone
WHERE ID = @ID
go

exec PessoaUpdate 3, 'Tina', 'Turner', '11-7777-6666'
go

DROP PROCEDURE IF EXISTS PessoaDelete
go
CREATE PROCEDURE PessoaDelete(
	@ID INT
)
as
	DELETE Pessoas
	WHERE ID = @ID
go

exec PessoaDelete 4
go

DROP PROCEDURE IF EXISTS PessoaSelectAll
go
CREATE PROCEDURE PessoaSelectAll
as
	SELECT *
		FROM Pessoas
go

exec PessoaSelectAll
go

DROP PROCEDURE IF EXISTS PessoaSelectOne
go
CREATE PROCEDURE PessoaSelectOne(
@ID INT
)
as
	SELECT *
		FROM Pessoas
		WHERE ID = @ID
go

exec PessoaSelectOne 2
go
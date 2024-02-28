USE escoladb;

SELECT * FROM alunos;
SELECT * FROM cursos;
SELECT * FROM inscricoes;

-- Utilização do INNER JOIN
-- Buscar o nome do aula que tenha uma inscrição
SELECT Alunos.Nome FROM Alunos INNER JOIN inscricoes ON inscricoes.AlunoID = alunos.AlunoID;
-- WHERE  Alunos.Nome = "Carlos Souza" selecionando apenas o Carlos Souza

-- Desafio 1 
-- Obtendo o nome de todos os alunos inscritos no curso de "Matematica"

 -- SELECT Alunos.Nome FROM Alunos INNER JOIN inscricoes 
 -- ON inscricoes.AlunoID = alunos.AlunoID WHERE inscricoes.CursoID = 1;
 
SELECT Cursos.Nome, alunos.Nome FROM Alunos 
INNER JOIN inscricoes ON inscricoes.AlunoID = alunos.AlunoID
INNER JOIN Cursos ON inscricoes.CursoID = Cursos.CursoID 
WHERE Cursos.Nome = "Matemática";

-- Exercicio 2
-- Obtendo o nome dos cursos que tem inscricoes

SELECT Cursos.Nome FROM Cursos
INNER JOIN inscricoes ON inscricoes.CursoID = Cursos.CursoID;


-- Exercicio 3
SELECT alunos.Nome, Cursos.Nome FROM Alunos 
INNER JOIN inscricoes ON inscricoes.AlunoID = alunos.AlunoID
INNER JOIN Cursos ON inscricoes.CursoID = cursos.CursoID
WHERE  alunos.Nome = "João Silva";

-- Exercicio 4
SELECT DISTINCT a.Nome, a.Email FROM Alunos AS a -- alunos
INNER JOIN inscricoes i ON i.AlunoID = a.AlunoID;

-- Exercicio 5
SELECT a.Nome, c.Nome, i.DataInscricao FROM Alunos a 
INNER JOIN inscricoes i ON i.AlunoID = a.AlunoID 
INNER JOIN cursos c ON c.CursoID = i.CursoID;

-- Exercicio 6
SELECT c.Nome, a.Nome FROM Alunos a 
INNER JOIN inscricoes i ON i.AlunoID = a.AlunoID 
INNER JOIN cursos c ON c.CursoID = i.CursoID
ORDER BY a.Nome ASC; -- ASC listar em ordem alfabética 

-- Exercicio 7
-- Contar o número de Alunos por Curso




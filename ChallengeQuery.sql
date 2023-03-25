-- 1
SELECT
	Nome,
	Ano
From Filmes

-- 2 
SELECT *
From Filmes
ORDER BY Ano 

-- 3 
SELECT *
From Filmes
WHERE Nome = 'De Volta para o Futuro'

-- 4
SELECT *
FROM Filmes
WHERE Ano = 1997

-- 5
SELECT *
FROM Filmes
WHERE Ano > 2000

-- 6
SELECT *
FROM Filmes
WHERE Duracao > 100 and Duracao < 150
ORDER BY Duracao

-- 7 
SELECT Ano, COUNT(*) AS Quantidade
FROM Filmes 
GROUP BY Ano 
ORDER BY SUM(Duracao) DESC;

-- 8
SELECT *
FROM Atores
WHERE Genero = 'M'

-- 9 
SELECT *
FROM Atores
WHERE Genero = 'F'
ORDER BY PrimeiroNome

-- 10
SELECT f.Nome, g.Genero
FROM Filmes f
INNER JOIN FilmesGenero fg	ON fg.IdFilme = f.Id
INNER JOIN Generos g ON g.Id = fg.IdGenero

-- 11
SELECT f.Nome, g.Genero
FROM Filmes f
INNER JOIN FilmesGenero fg	ON fg.IdFilme = f.Id
INNER JOIN Generos g ON g.Id = fg.IdGenero
WHERE g.Genero = 'Mistério'

-- 12
SELECT f.Nome, a.PrimeiroNome, a.UltimoNome, ef.Papel  
FROM Filmes f
INNER JOIN ElencoFilme ef	ON ef.IdFilme = f.Id
INNER JOIN Atores a ON a.Id = ef.IdAtor

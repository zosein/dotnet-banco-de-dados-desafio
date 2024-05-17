-- 1
SELECT 
	Nome,
	Ano
FROM Filmes
WHERE Nome	IS NOT NULL AND
Ano IS NOT NULL;

-- 2
SELECT 
	Nome,
	Ano
FROM Filmes
ORDER BY Ano ASC

-- 3
SELECT 
	Nome,
	Ano,
	Duracao
FROM Filmes
WHERE Nome = 'De Volta para o Futuro'
	AND Ano = 1985
	AND Duracao = 116

-- 4
SELECT 
	Nome,
	Ano,
	Duracao
FROM Filmes
WHERE Ano = 1997

--5
SELECT 
	Nome,
	Ano,
	Duracao
FROM Filmes
WHERE Ano > 2000

--6
SELECT 
	Nome,
	Ano,
	Duracao
FROM Filmes
WHERE Duracao > 100
AND Duracao < 150
ORDER BY Duracao ASC

--7
SELECT 
	Ano,
	COUNT(*) AS Quantidade 
	
FROM Filmes
GROUP BY Ano
ORDER BY Quantidade DESC

-- 8
SELECT 
	Id,
	PrimeiroNome,
	UltimoNome,
	Genero
FROM Atores
WHERE Genero = 'M'

--9
SELECT 
	Id,
	PrimeiroNome,
	UltimoNome,
	Genero
FROM Atores
WHERE Genero = 'F'
ORDER BY PrimeiroNome

--10
SELECT 
	f.Nome, 
	g.Genero
FROM Filmes f 
INNER JOIN FilmesGenero FG ON(FG.IdFilme = f.Id)
INNER JOIN Generos g ON(g.Id = FG.IdGenero) 

--11
SELECT
	f.Nome, 
	g.Genero
FROM Filmes f 
INNER JOIN FilmesGenero FG ON(FG.IdFilme = f.Id)
INNER JOIN Generos g ON(g.Id = FG.IdGenero) 
WHERE g.Genero = 'Mistério'

--12
SELECT 
	  f.Nome 
	, pn.PrimeiroNome 
	, pn.UltimoNome
	, p.Papel 
FROM Atores pn
INNER JOIN ElencoFilme p ON(p.IdAtor = pn.Id)
INNER JOIN Filmes f ON(F.Id = p.IdFilme)





SELECT * FROM Generos
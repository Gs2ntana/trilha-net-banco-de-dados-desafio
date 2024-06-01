--1
SELECT 
	Nome,
	Ano
FROM Filmes

--2
SELECT 
	Nome,
	Ano
FROM Filmes
ORDER BY Ano ASC

--
SELECT 
	Nome,
	Ano,
	Duracao
FROM Filmes
WHERE Nome = 'De volta para o futuro'

--
SELECT 
	Nome,
	Ano,
	Duracao
FROM Filmes
WHERE Ano = 1997

--
SELECT 
	Nome,
	Ano,
	Duracao
FROM Filmes
WHERE Ano > 2000

--
SELECT 
	Nome,
	Ano,
	Duracao
FROM Filmes
WHERE Duracao > 100 AND Duracao < 150
ORDER BY Duracao ASC

--
SELECT 
	Ano,
	COUNT(*) AS quantidadeDeFilmes
FROM Filmes
GROUP BY Ano
ORDER BY quantidadeDeFilmes DESC;	

--
SELECT  
	PrimeiroNome,
	UltimoNome,
	Genero	
FROM Atores
WHERE Genero = 'M'

--
SELECT  
	PrimeiroNome,
	UltimoNome,
	Genero
FROM Atores
WHERE Genero = 'F'
ORDER BY PrimeiroNome

--
SELECT F.Nome AS NomeFilme, G.Genero
FROM Filmes F
JOIN FilmesGenero FG ON F.Id = FG.IdFilme
JOIN Generos G ON FG.IdGenero = G.Id

--
SELECT F.Nome AS NomeFilme, G.Genero
FROM Filmes F
JOIN FilmesGenero FG ON F.Id = FG.IdFilme
JOIN Generos G ON FG.IdGenero = G.Id
WHERE G.Genero = 'Mistério'

--
SELECT 
    F.Nome AS NomeFilme,
    A.PrimeiroNome,
    A.UltimoNome,
    EF.Papel
FROM 
    Filmes F
JOIN 
    ElencoFilme EF ON F.Id = EF.IdFilme
JOIN 
    Atores A ON EF.IdAtor = A.Id;
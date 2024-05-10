--1 - Mostrando Nome e Ano
SELECT Nome, Ano FROM Filmes

--2 - Mostrando Nome e Ano por Ordem Crescente 
SELECT Nome,Ano,Duracao FROM Filmes ORDER BY Ano

--3 - Buscar pelo Filme De Volta para o  Futuro (Nome,Ano e a Duracao)
SELECT Nome,Ano,Duracao FROM Filmes WHERE Nome = 'De Volta para o Futuro'

--4 - Buscar Filmes Lançados em 1997
SELECT Nome,Ano,Duracao FROM Filmes WHERE Ano = '1997'

--5 - Buscar Filmes Lançados após o ano 2000
SELECT Nome,Ano,Duracao FROM Filmes WHERE Ano > '2000'

--6 - Filmes com duracao maior que 100 e menor que 150,ordenado pela duracao em ordem crescente
SELECT Nome,Ano,Duracao FROM Filmes WHERE Duracao > '100' AND Duracao < '150' ORDER BY Duracao

--7 - Quantidade de Filmes lançadas no ano, agrupando por ano,ordenado pela duracao em ordem decrescente
SELECT Ano,COUNT(*) Quantidade FROM Filmes GROUP BY Ano ORDER BY Quantidade DESC

--8 - Buscar Atores do Genero Masculino, retornando o PrimeiroNome, UltimoNome
SELECT * FROM Atores WHERE Genero = 'M'

--9 - Buscar os Atores do genero Feminino,retornando PrimeiroNome,UltmoNome , ordenado pelo PrimeiroNome
SELECT * FROM Atores WHERE Genero = 'F' ORDER BY PrimeiroNome

--10 - Buscar Nome do Filme e Genero
SELECT 
	Filmes.Nome,
	Generos.Genero	
FROM Filmes 
INNER JOIN FilmesGenero ON Filmes.Id = FilmesGenero.IdFilme 
INNER JOIN Generos ON Generos.Id = FilmesGenero.IdGenero

--11 - Buscar Nome do Filme e Genero do tipo "Mistério"
SELECT 
	Filmes.Nome,
	Generos.Genero
FROM Filmes
INNER JOIN FilmesGenero ON Filmes.Id = FilmesGenero.IdFilme
INNER JOIN Generos ON Generos.Id = FilmesGenero.IdGenero
WHERE Genero = 'Mistério'

--12 - Buscar Nome Filme e Atores , Trazendo PrimeiroNome,UltimoNome e Papel
SELECT 
	Filmes.Nome,
	Atores.PrimeiroNome,
	Atores.UltimoNome,
	ElencoFilme.Papel
FROM Filmes
INNER JOIN ElencoFilme ON Filmes.Id = ElencoFilme.IdFilme 
INNER JOIN  Atores ON Atores.Id = ElencoFilme.IdAtor 




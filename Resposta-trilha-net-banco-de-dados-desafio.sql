--Etapa 1 - Buscar o nome e ano dos filmes
SELECT Nome, Ano FROM Filmes

--Etapa 2 - Buscar o nome e ano dos filmes, ordenados por ordem crescente pelo ano (estrito como pediu)
SELECT Nome, Ano FROM Filmes ORDER BY Ano ASC

--Etapa 2 - Buscar o nome e ano dos filmes, ordenados por ordem crescente pelo ano (Igual ao exemplo)
SELECT Nome, Ano, Duracao FROM Filmes ORDER BY Ano ASC

--Etapa 3 - Buscar pelo filme de volta para o futuro, trazendo o nome, ano e a duração
SELECT Nome, Ano, Duracao FROM Filmes WHERE Nome = 'De Volta para o Futuro'

--Etapa 4 - Buscar os filmes lançados em 1997
SELECT Nome, Ano, Duracao FROM Filmes WHERE Ano = '1997'

--Etapa 5 - Buscar os filmes lançados APÓS o ano 2000
SELECT Nome, Ano, Duracao FROM Filmes WHERE Ano > '2000'

--Etapa 6 - Buscar os filmes com a duracao maior que 100 e menor que 150, ordenando pela duracao em ordem crescente
SELECT Nome, Ano, Duracao FROM Filmes WHERE Duracao > '100' AND Duracao < '150' ORDER BY Duracao ASC

--Etapa 7 - Buscar a quantidade de filmes lançadas no ano, agrupando por ano, ordenando pela duracao em ordem decrescente
SELECT Ano, COUNT(*) Quantidade FROM Filmes GROUP BY Ano ORDER BY Quantidade DESC

--Etapa 8 - Buscar os Atores do gênero masculino, retornando o PrimeiroNome, UltimoNome (estrito como pede)
SELECT PrimeiroNome, UltimoNome, Genero FROM Atores WHERE Genero = 'M'

--Etapa 8 - Buscar os Atores do gênero masculino, retornando o PrimeiroNome, UltimoNome (igual ao exemplo)
SELECT * FROM Atores WHERE Genero = 'M'

--Etapa 9 - Buscar os Atores do gênero feminino, retornando o PrimeiroNome, UltimoNome, e ordenando pelo PrimeiroNome (estrito como pede)
SELECT PrimeiroNome, UltimoNome, Genero FROM Atores WHERE Genero = 'F' ORDER BY PrimeiroNome

--Etapa 9 - Buscar os Atores do gênero feminino, retornando o PrimeiroNome, UltimoNome, e ordenando pelo PrimeiroNome (igual ao exemplo)
SELECT * FROM Atores WHERE Genero = 'F' ORDER BY PrimeiroNome

--Etapa 10 - Buscar o nome do filme e o gênero
SELECT Filmes.Nome, Generos.Genero FROM Filmes INNER JOIN FilmesGenero ON Filmes.Id = FilmesGenero.IdFilme INNER JOIN Generos ON Generos.Id = FilmesGenero.IdGenero

--Etapa 11 - Buscar o nome do filme e o gênero do tipo "Mistério"
SELECT Filmes.Nome, Generos.Genero FROM Filmes INNER JOIN FilmesGenero ON Filmes.Id = FilmesGenero.IdFilme INNER JOIN Generos ON Generos.Id = FilmesGenero.IdGenero WHERE Genero = 'Mistério'

--Etapa 12 - Buscar o nome do filme e os atores, trazendo o PrimeiroNome, UltimoNome e seu Papel
SELECT Nome, PrimeiroNome, UltimoNome, Papel FROM Filmes INNER JOIN ElencoFilme ON Filmes.Id = ElencoFilme.IdFilme INNER JOIN Atores ON Atores.Id = ElencoFilme.IdAtor
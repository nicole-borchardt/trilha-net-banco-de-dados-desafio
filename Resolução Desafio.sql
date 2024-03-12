-- 1 Buscar o nome e ano dos filmes
SELECT NOME, ANO 
FROM Filmes

-- 2 Buscar o nome e ano dos filmes, ordenados por ordem crescente pelo ano
SELECT NOME, ANO 
FROM FILMES 
ORDER BY ANO 

-- 3 Buscar pelo filme de volta para o futuro, trazendo o nome, ano e a duração
SELECT NOME, ANO, DURACAO 
FROM FILMES
WHERE NOME = 'DE VOLTA PARA O FUTURO'

-- 4 Buscar os filmes lançados em 1997
SELECT *
FROM FILMES
WHERE ANO = 1997

-- 5 Buscar os filmes lançados APÓS o ano 2000
SELECT *
FROM FILMES
WHERE ANO >= 2000

-- 6 Buscar os filmes com a duracao maior que 100 e menor que 150, ordenando pela duracao em ordem crescente
SELECT *

FROM FILMES
WHERE DURACAO >= 100 AND DURACAO <= 150
ORDER BY DURACAO

-- 7 Buscar a quantidade de filmes lançadas no ano, agrupando por ano, ordenando pela duracao em ordem decrescente
SELECT COUNT(*) TOTAL, ANO 
FROM FILMES
GROUP BY ANO
ORDER BY ANO

-- 8 Buscar os Atores do gênero masculino, retornando o PrimeiroNome, UltimoNome
SELECT PRIMEIRONOME, ULTIMONOME 
FROM ATORES
WHERE GENERO = 'M'

-- 9 Buscar os Atores do gênero feminino, retornando o PrimeiroNome, UltimoNome, e ordenando pelo PrimeiroNome
SELECT PRIMEIRONOME, ULTIMONOME 
FROM ATORES
WHERE GENERO = 'F' 
ORDER BY PRIMEIRONOME

-- 10 Buscar o nome do filme e o gênero
SELECT FILMES.NOME, GENEROS.GENERO 
FROM FILMESGENERO 
INNER JOIN FILMES  ON FILMES.ID  = FILMESGENERO.IDFILME 
INNER JOIN GENEROS ON GENEROS.ID = FILMESGENERO.IDGENERO

-- 11 Buscar o nome do filme e o gênero do tipo "Mistério"
SELECT FILMES.NOME, GENEROS.GENERO 
FROM FILMESGENERO 
INNER JOIN FILMES  ON FILMES.ID  = FILMESGENERO.IDFILME 
INNER JOIN GENEROS ON GENEROS.ID = FILMESGENERO.IDGENERO
WHERE GENEROS.GENERO = 'Mistério'

-- 12 Buscar o nome do filme e os atores, trazendo o PrimeiroNome, UltimoNome e seu Papel
SELECT FILMES.NOME NMFILME, ATORES.PRIMEIRONOME, ATORES.ULTIMONOME, ELENCOFILME.PAPEL
FROM ELENCOFILME 
INNER JOIN FILMES ON FILMES.ID = ELENCOFILME.IDFILME 
INNER JOIN ATORES ON ATORES.ID = ELENCOFILME.IDATOR

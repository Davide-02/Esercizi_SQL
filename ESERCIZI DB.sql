--ESERCIZIO 2.1
SELECT libri.titolo,clienti.nome,gestioneordini.inizioP as dataI
FROM gestioneordini,libri,clienti 
WHERE gestioneordini.idL=libri.id and gestioneordini.idC=clienti.id 
GROUP BY dataI
ORDER BY dataI DESC
--ESERCIZIO 2.2
SELECT clienti.nome, COUNT(libri.id)
FROM gestioneordini,libri,clienti 
WHERE gestioneordini.idL=libri.id and gestioneordini.idC=clienti.id 
GROUP BY clienti.nome
LIMIT 3
--ESERCIZIO 2.3
SELECT gestioneordini.id, clienti.nome, libri.titolo
FROM gestioneordini,clienti,libri
WHERE libri.id=gestioneordini.idL AND clienti.id=gestioneordini.idC AND gestioneordini.fineP Is Null;
--ESERCIZIO 2.4
SELECT gestioneordini.inizioP, gestioneordini.fineP, clienti.nome, libri.titolo
FROM gestioneordini,clienti,libri
WHERE libri.id=gestioneordini.idL AND clienti.id=gestioneordini.idC AND gestioneordini.fineP is null
--ESERCIZIO 2.5
SELECT COUNT(idL), libri.titolo
FROM gestioneordini,clienti,libri
WHERE libri.id=gestioneordini.idL AND clienti.id=gestioneordini.idC
GROUP BY libri.titolo

--ESERCIZIO 3.1
SELECT annessi.tipo 
FROM annessi
WHERE annessi.tipo ="Box"
--ESERCIZIO 3.2
SELECT annessi.tipo, immobile.*
FROM annessi,immobile
WHERE annessi.xidI=immobile.idI and annessi.tipo="Giardino"
--ESERCIZIO 3.3
SELECT proprietario.nome, SUM(immobile.superficie) AS totale
FROM proprietario,immobile
WHERE proprietario.idP=immobile.xidP and proprietario.nome="Davide" 
GROUP by proprietario.nome
--ESERCIZIO 3.4
SELECT proprietario.nome, immobile.tipo
FROM proprietario,immobile
WHERE proprietario.idP=immobile.xidP and immobile.tipo="Villa" 
GROUP by proprietario.nome
--ESERCIZIO 3.5
SELECT proprietario.nome,annessi.tipo,immobile.tipo
FROM proprietario,immobile,annessi
WHERE proprietario.idP=immobile.xidP and annessi.xidI= immobile.idI and immobile.tipo="Appartamento" and annessi.tipo="Box" 
GROUP by proprietario.nome
--ESERCIZIO 3.6
SELECT proprietario.nome, immobile.anno
FROM proprietario, immobile
WHERE proprietario.idP=immobile.xidP and immobile.anno>2016


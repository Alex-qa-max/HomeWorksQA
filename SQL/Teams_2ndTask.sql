--1--
SELECT c.Name AS Country, con.Name AS Continent FROM Country AS c, Continent AS con WHERE c.ContinentId=con.Id 
ORDER BY c.Name DESC, con.Name

--2--
SELECT c.Name AS Country, con.Name AS Continent FROM Country AS c, Continent AS con WHERE c.ContinentId=con.Id AND c.Champion>0 ORDER BY con.Name DESC,c.Name 

--3--
SELECT c.Name AS Country, l.Name AS Languages FROM Country AS c, CountryLanguage AS cl, Language AS l WHERE c.id=cl.CountryId AND cl.LanguageId=l.Id ORDER BY l.Name

--4--
SELECT c.Name FROM Country AS c, Continent AS con, CountryLanguage AS cl, Language AS l, Currency AS cur WHERE c.id=cl.CountryId AND cl.LanguageId=l.Id AND c.ContinentId=con.Id AND cur.id=c.CurrencyId AND 
con.Name IN ('Южная Америка', 'Центральная Америка', 'Северная Америка') AND cur.Name != 'доллар США' AND l.Name != 'испанский'

--5--
SELECT c.Name AS Country, con.Name AS Continent FROM Country AS c, Continent AS con WHERE c.ContinentId=con.Id AND c.Debut>0
ORDER BY con.Name, c.Name DESC

--6--
SELECT c.Name FROM Country AS c, Continent AS con, CountryLanguage AS cl, Language AS l  WHERE c.id=cl.CountryId AND cl.LanguageId=l.Id AND c.ContinentId=con.Id AND  
con.Name ='Африка' AND  l.Name = 'французский'

--7--
SELECT c.Name AS Country FROM Country AS c, Continent AS con, Currency AS cur WHERE c.ContinentId=con.Id AND cur.id=c.CurrencyId AND  c.Champion>0 AND cur.Name='евро'

--8--
SELECT c.Name FROM Country AS c, CountryLanguage AS cl, Language AS l  WHERE cl.LanguageId=l.Id AND c.id=cl.CountryId AND l.Name = 'английский' AND c.Debut>0

--9--
SELECT c.Name AS Country, con.Name AS Continent FROM Country AS c, Continent AS con, CountryLanguage AS cl, Language AS l  WHERE c.id=cl.CountryId AND cl.LanguageId=l.Id AND c.ContinentId=con.Id AND  
  l.Name = 'английский' ORDER BY c.Name 

--10--
SELECT c.Name AS Country FROM Country AS c, Continent AS con WHERE c.ContinentId=con.Id AND c.Champion>0 AND con.Name!='Европа'

--11--
SELECT count(c.Name) AS Count_of_Countries FROM Country AS c, CountryLanguage AS cl, Language AS l  WHERE cl.LanguageId=l.Id AND c.id=cl.CountryId AND l.Name = 'английский'

--12--
SELECT count(c.Name) AS Count_of_Countries FROM Country AS c, Currency AS cur  WHERE cur.id=c.CurrencyId AND cur.Name='евро'

--13--
SELECT count(c.Name) AS Count_of_Countries FROM Country AS c, Continent AS con WHERE c.ContinentId=con.Id AND c.Champion>0 

--14--
SELECT con.Name  AS Continent, AVG(c.Territory) AS AVG_Territory  FROM Country AS c, Continent AS con WHERE c.ContinentId=con.Id GROUP BY con.Name

--15--
SELECT SUM(c.Champion) AS Count_of_Countries FROM Country AS c, Continent AS con WHERE c.ContinentId=con.Id AND c.Champion>0

--16--
SELECT c.Name AS Country, SUM(c.Champion) AS Count_of_Countries FROM Country AS c, Continent AS con WHERE c.ContinentId=con.Id AND c.Champion>0 GROUP BY c.Name

--17--
SELECT  count(c.Name) AS Count_of_Countries FROM Country AS c, Continent AS con WHERE c.ContinentId=con.Id AND con.Name IN ('Европа','Азия')

--18--
SELECT c.Name  AS Country, c.Territory  FROM Country AS c, Continent AS con WHERE c.ContinentId=con.Id AND c.Territory=(SELECT MIN(Territory) FROM Country)

--19--
SELECT count(c.Name) AS Count_of_Countries FROM Country AS c, Continent AS con WHERE c.ContinentId=con.Id AND c.Debut>0 

--20--
SELECT count(c.Name) AS Count_of_Countries FROM Country AS c, Continent AS con WHERE c.ContinentId=con.Id

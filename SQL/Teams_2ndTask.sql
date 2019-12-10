--1--
select c.name as Country, con.Name as Continent from Country as c, Continent as con where c.ContinentId=con.Id 
Order by c.name DESC, con.name

--2--
select c.name as Country, con.Name as Continent from Country as c, Continent as con where c.ContinentId=con.Id AND c.Champion>0 ORDER by con.Name DESC,c.Name 

--3--
select c.name as Country, l.name as Languages from Country as c, CountryLanguage as cl, Language as l where c.id=cl.CountryId AND cl.LanguageId=l.Id Order by l.name

--4--
select c.name from Country as c, Continent as con, CountryLanguage as cl, Language as l, Currency as cur where c.id=cl.CountryId AND cl.LanguageId=l.Id AND c.ContinentId=con.Id And cur.id=c.CurrencyId AND 
con.Name IN ('Южная Америка', 'Центральная Америка', 'Северная Америка') AND cur.name != 'доллар США' AND l.name != 'испанский'

--5--
select c.name as Country, con.Name as Continent from Country as c, Continent as con where c.ContinentId=con.Id AND c.Debut>0
Order by con.name, c.name DESC

--6--
select c.name from Country as c, Continent as con, CountryLanguage as cl, Language as l  where c.id=cl.CountryId AND cl.LanguageId=l.Id AND c.ContinentId=con.Id And  
con.Name ='Африка' AND  l.name = 'французский'

--7--
select c.name as Country from Country as c, Continent as con, Currency as cur where c.ContinentId=con.Id AND cur.id=c.CurrencyId AND  c.Champion>0 AND cur.Name='евро'

--8--
select c.name from Country as c, CountryLanguage as cl, Language as l  where cl.LanguageId=l.Id AND c.id=cl.CountryId And l.name = 'английский' And c.Debut>0

--9--
select c.name as Country, con.Name as Continent from Country as c, Continent as con, CountryLanguage as cl, Language as l  where c.id=cl.CountryId AND cl.LanguageId=l.Id AND c.ContinentId=con.Id And  
  l.name = 'английский' order by c.name 

--10--
select c.name as Country from Country as c, Continent as con where c.ContinentId=con.Id AND c.Champion>0 AND con.Name!='Европа'

--11--
select count(c.name) as Count_of_Countries from Country as c, CountryLanguage as cl, Language as l  where cl.LanguageId=l.Id AND c.id=cl.CountryId And l.name = 'английский'

--12--
select count(c.name) as Count_of_Countries from Country as c, Currency as cur  where cur.id=c.CurrencyId AND cur.Name='евро'

--13--
select count(c.name) as Count_of_Countries from Country as c, Continent as con where c.ContinentId=con.Id AND c.Champion>0 

--14--
select con.Name  as Continent, AVG(c.Territory) as AVG_Territory  from Country as c, Continent as con where c.ContinentId=con.Id Group by con.Name

--15--
select SUM(c.Champion) as Count_of_Countries from Country as c, Continent as con where c.ContinentId=con.Id AND c.Champion>0

--16--
select c.name as Country, SUM(c.Champion) as Count_of_Countries from Country as c, Continent as con where c.ContinentId=con.Id AND c.Champion>0 group by c.Name

--17--
select  count(c.name) as Count_of_Countries from Country as c, Continent as con where c.ContinentId=con.Id AND con.Name IN ('Европа','Азия')

--18--
select c.Name  as Country, c.Territory  from Country as c, Continent as con where c.ContinentId=con.Id AND c.Territory=(select MIN(Territory) from Country)

--19--
select count(c.name) as Count_of_Countries from Country as c, Continent as con where c.ContinentId=con.Id AND c.Debut>0 

--20--
select count(c.name) as Count_of_Countries from Country as c, Continent as con where c.ContinentId=con.Id

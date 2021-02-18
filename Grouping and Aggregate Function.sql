select * from titles t;

--Get average prices from the titles table for each type of book,
-- and convert type to char(30).
select count(*) , type::character(30),avg(price::numeric) as "Average"
from titles t 
group by type;

--Print the difference between (to a resolution of days) the earliest 
--and latest publication date in titles
select max(t.pubdate)-min(t.pubdate) from titles t ;


--Print the average, min and max book prices within the titles table 
--organised into groups based on type and publisher id.
select t.type,t.pub_id ,avg(price::numeric) as Average, 
min(price::numeric) as "Min", max(price::numeric) as "Max"
from titles t 
group by t."type", pub_id ;

--Refine the previous question to show only those types whose
-- average price is > $20 
--and output the results sorted on the average price.
select t.type,t.pub_id ,avg(price::numeric) as Average, 
min(price::numeric) as "Min", max(price::numeric) as "Max"
from titles t  
group by t."type", pub_id 
having avg(price::numeric) > '20.00'::numeric ;

--List the books in order of the length of their title
select t.title from titles t order by char_length(t.title); 


			--Business Queries

--What is the average age in months of each type of title?
select t."type" ,count(*),avg(age(t.pubdate)) as "Average_Age"
from titles t 
group by t."type" ;

--How many authors live in each city?
select count(*),a2.city from authors a2 
group by city ;

--What is the longest title?
select t.title
from titles t
order by char_length(t.title) desc limit 1; 

--How many books have been sold by each store
-- and how many books have been sold in total?
select s2.stor_name ,sa.qty from stores s2 
inner join sales sa on s2.stor_id =sa.stor_id ;

--Join the publishers and pub_info and show 
--the publisher name and the first 40 characters of the pr_info information
select p.pub_name ,substring(pi2.pr_info,1,40)
from publishers p inner join pub_info pi2 
on p.pub_id = pi2.pub_id 

--Join the publishers and titles tables to 
--show all titles published by each publisher. Display the 
--pub_id,pub_name and and title_id
select p2.pub_id ,p2.pub_name ,t2.title_id 
from publishers p2 inner join titles t2 
on p2.pub_id = t2.pub_id 

--For each title_id in the table titles
-- rollup the corresponding qty in sales and show: title_id, title, ord_num 
--and the rolled-up value as a column aggregate called Total Sold
select t2.title_id , t2.title ,count(s2.qty) as "Total Sold" 
from titles t2 inner join sales s2 
on t2.title_id = s2.title_id 
group by t2.title_id ;

select * from sales s;
select * from titles t2 ;

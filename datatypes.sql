-- select title from pubs2.titles
-- where price is null;

select 
      case 
      when price is null then '20.00'::money
      else price
      end
      as prices
from pubs2.titles;

-- select price, nullif(price,'$20.00'::money) as prices
-- from pubs2.titles

-- select price from pubs2.titles

-- select * from pubs2.titles

-- select substring(pr_info,1,50) from pubs2.pub_info

-- select * from pubs2.sales
--select to_char(ord_date,'Day DD Month YYYY') from pubs2.sales
SELECT * FROM bill_db.bill;Select b.patient_name, b.visit_type, b.bill_number, b.debit_amount, bd.description, bd.last_modified_date_time, bd.bill_id
from bill b
left join  bill_details bd on bd.last_modified_by = b.last_modified_by
group by b.patient_name, b.visit_type, b.bill_number, b.debit_amount, bd.description, bd.last_modified_date_time, bd.bill_id;
Select * from his_user
where last_modified_by like '%adt%';
Select concat(user_desc, " -- ", user_name, " -- ", "modify-by", "__", last_modified_by) as modified_name from his_user;
Select concat(user_desc, " -- ", user_name, " -- ", "modify_by", "__", last_modified_by) as modified_name from his_user;
Select concat(user_desc, " -- ", user_name, " -- ", "modify_by", " __ ", last_modified_by) as modified_name from his_user;
Select concat(user_desc, " -- ", user_name, " -- ", "modify_by", " || ", last_modified_by) as modified_name from his_user;
Select concat(user_desc, " -- ", user_name, " -- ", "modify_by", " -- ", last_modified_by) as modified_name from his_user;
Select concat(user_desc, " -- ", user_name, " -- ", "modify_by", " ", last_modified_by) as modified_name from his_user;
Select concat(user_desc, " ?? ", user_name, " ", "modify_by", " ", last_modified_by) as modified_name from his_user;
Select lower(user_desc), count(user_desc) from his_user
group by user_desc;
Select upper(user_desc), count(user_desc) from his_user
group by user_desc;
Select distinct(user_desc) from his_user;
select * from his_user
where user_name in ('ordercom', 'nurse', 'adt');
Select count(*) from his_user;
Select bill_id, sum(unit_price) as Sum_price from bill_details
group by bill_id;
Select bill_id, sum(unit_price) from bill_details
group by bill_id;
Select bill_id, sum(unit_price) from bill_details;
Select description, count(*) from bill_details 
group by description;
Select debit_amount, count(*) as Bill_count,
case 
when debit_amount >'1000' then 'High Paid'
when debit_amount >='500' then 'Medium Paid'
else 'Less Paid'
End as 'Paid Type'
from bill
group by debit_amount;
Select debit_amount, count(*),
case 
when debit_amount >'1000' then 'High Paid'
when debit_amount >='500' then 'Medium Paid'
else 'Less Paid'
End as 'Paid Type'
from bill
group by debit_amount;
Select debit_amount, count(*),
case 
when debit_amount >'1000' then 'High Paid'
when debit_amount >='500' then 'Medium Paid'
else 'Less Paid'
End as 'Paid Type'
from bill;
Select debit_amount, 
case 
when debit_amount >'1000' then 'High Paid'
when debit_amount >='500' then 'Medium Paid'
else 'Less Paid'
End as 'Paid Type'
from bill;
Select * from bill;
Select last_modified_by, count(*) as no_of_count from bill
group by last_modified_by
order by last_modified_by asc;
Select count(*), last_modified_by from bill
group by last_modified_by
order by last_modified_by asc;
Select sum(debit_amount) as total_amount, 
min(debit_amount) as minimum_amount, 
max(debit_amount) as Maximum_amount, 
avg(debit_amount) as average_amount
from bill;
Select sum(debit_amount) as total_amount,;
select distinct(visit_type) from bill;
select count(*) from bill;
select max(last_modified_date_time) from bill;
Select * from bill;
select max(last_modified_date_time) from bill;
use Bill_db;
select max(last_modified_date_time) from bill;
DROP DATABASE `sr`;
Select * from bill_details;
Select b.mrd_number, b.visit_type, b.bill_number, b.paid_amount, bd.description, bd.debit_amount, count(*)
from bill b
join bill_details bd on bd.last_modified_by = b.last_modified_by
group by b.mrd_number, b.visit_type, b.bill_number, b.paid_amount, bd.description, bd.debit_amount;
Select b.mrd_number, b.visit_type, b.bill_number, b.paid_amount, bd.description, bd.debit_amount from bill b
join bill_details bd on bd.last_modified_by = b.last_modified_by
group by b.mrd_number, b.visit_type, b.bill_number, b.paid_amount, bd.description, bd.debit_amount;
Select b.mrd_number, b.visit_type, b.bill_number, b.paid_amount, bd.description, bd.debit_amount from bill b
join bill_details bd on bd.last_modified_by = b.last_modified_by
group by b.mrd_number, b.visit_type, b.bill_number;
Select b.mrd_number, b.visit_type, b.bill_number, b.paid_amount, bd.description, bd.debit_amount from bill b
join bill_details bd on bd.last_modified_by = b.last_modified_by
group by b.mrd_number, b.visit_type, b.bill_number;
Select b.mrd_number, b.visit_type, b.bill_number, b.paid_amount, bd.description, bd.debit_amount from bill b
join bill_details bd on bd.last_modified_by = b.last_modified_by
group by b.mrd_number;
Select b.mrd_number, b.visit_type, b.bill_number, b.paid_amount, bd.description, bd.debit_amount from bill b
join bill_details bd on bd.last_modified_by = b.last_modified_by;
Select * from bill_details;
Select * from bill;
Select description, count(*),
case 
when description like '%Admission Charges%' then 'Paid'
when description like '%Maintenance Charges (Major) ANESTH-02%' then 'High Paid'
else description
end as Payment
from bill_details
where description = 'Admission Charges'
group by description;
Select description, count(*),
case 
when description like '%Admission Charges%' then 'Paid'
when description like '%Maintenance Charges (Major) ANESTH-02%' then 'High Paid'
else description
end as Payment
from bill_details
group by description;
Select description,
case 
when description like '%Admission Charges%' then 'Paid'
when description like '%Maintenance Charges (Major) ANESTH-02%' then 'High Paid'
else description
end as Payment
from bill_details;
Select description,
case 
when description like '%Admission Charges%' then 'Paid'
when description like '%Maintenance Charges (Major) ANESTH-02%' then 'High Paid'
else description
end as 'Payment'
from bill_details;
Select description,
case 
when description like '%Admission Charges%' then 'Paid'
when description like '%Maintenance Charges (Major) ANESTH-02%' then 'High Paid'
else 'description'
end as 'Payment'
from bill_details;
Select 
case 
when description like '%Admission Charges%' then 'Paid'
when description like '%Maintenance Charges (Major) ANESTH-02%' then 'High Paid'
else 'description'
end as 'Payment'
from bill_details;
Select * from bill_details;
Select substr(ordered_date_time, 1,10) as extract from bill_details;
Select * from bill_details;
Select * from bill;
Select user_name, rank() over (order by user_name) as row_no
from his_user;
Select user_name, row_number() over (order by user_name) as row_no
from his_user;
Select user_name, row_number() over (partition by user_name) as rnk_no,
rank() over (partition by user_name) as rnk_no,
dense_rank() over (partition by user_name) as dense
from his_user;
Select *, row_number() over (partition by user_name) as rnk_no,
rank() over (partition by user_name) as rnk_no,
dense_rank() over (partition by user_name) as dense
from his_user;
Select * from his_user;
Select * from bill;
use bill_db;
Select * from customer_nodes;
with cte as (
select *,row_number() over(order by empd_id ) as row_no,
rank() over(order by empd_id ) as rank_no,
dense_rank() over(order by empd_id ) as denseRnk
from clocked_hours
)
Select * from cte;
select *,row_number() over(order by empd_id ) as row_no,
rank() over(order by empd_id ) as rank_no,
dense_rank() over(order by empd_id ) as denseRnk
from clocked_hours;
select *,row_number() over(partition by empd_id ) as row_no,
rank() over(partition by empd_id ) as rank_no,
dense_rank() over(partition by empd_id ) as denseRnk
from clocked_hours;
select *,row_number() over(order by swipe) as row_no,
rank() over(order by swipe) as rank_no,
dense_rank() over( order by swipe) as denseRnk
from clocked_hours;
select *,row_number() as row_no,
rank()  as rank_no,
dense_rank()  as denseRnk
from clocked_hours;
select *,row_number() over(partition by empd_id) as row_no,
rank() over(partition by empd_id) as rank_no,
dense_rank() over(partition by empd_id) as denseRnk
from clocked_hours;
select *,row_number() over(partition by empd_id order by swipe) as row_no,
rank() over(partition by empd_id order by swipe) as rank_no,
dense_rank() over(partition by empd_id order by swipe) as denseRnk
from clocked_hours;
select *,row_number() over(partition by empd_id order by swipe) as row_no,
select *,rank() over(partition by empd_id order by swipe) as rank_no,
select *,dense_rank() over(partition by empd_id order by swipe) as denseRnk
from clocked_hours;
select *,row_number() over(partition by empd_id order by swipe) as swipe_out
from clocked_hours;
Select * from clocked_hours;
with cte as (
select *,lead(swipe) over(partition by empd_id order by swipe) as swipe_out
from clocked_hours
)
select empd_id, sum(timestampdiff(hour, swipe, swipe_out )) as clocked_hours
  from cte 
  where flag = 'O'
  group by empd_id;
with cte as (
select *,lead(swipe) over(partition by empd_id order by swipe) as swipe_out
from clocked_hours
)
select empd_id, sum(timestampdiff(hour, swipe, swipe_out )) as clocked_hours
  from cte 
  where flag = 'I'
  group by empd_id;
select *,lead(swipe) over(partition by empd_id order by swipe) as swipe_out
from clocked_hours;
select *,lag(swipe) over(partition by empd_id order by swipe) as swipe_out
from clocked_hours;
select *,lead(swipe) over(partition by empd_id order by swipe) as swipe_out
from clocked_hours;
with cte as (
select *,lead(swipe) over(partition by empd_id order by swipe) as swipe_out
from clocked_hours;
with cte as (
select *,lead(swipe) over(partition by empd_id order by swipe) as swipe_out
from clocked_hours
)
select empd_id, sum(timestampdiff(hour, swipe, swipe_out )) as clocked_hours
  from cte 
  where flag = 'I'
  group by empd_id;
with cte as (
select *,lead(swipe) over(partition by empd_id order by swipe) as swipe_out
from clocked_hours
)
select empd_id, sum(timestampdiff(hour, swipe, swipe_out )) as clocked_hours
  from cte;
select *,lead(swipe) over(partition by empd_id order by swipe) as swipe_out
from clocked_hours;
Select * from clocked_hours;
insert into clocked_hours values
(11114,'08:30','I'),
(11114,'10:30','O'),
(11114,'11:30','I'),
(11114,'15:30','O'),
(11115,'09:30','I'),
(11115,'17:30','O');
create table clocked_hours(
empd_id int,
swipe time,
flag char
);
Select * from employee;
Select * from customer_nodes;
Select * from employee;
Select * from customer_nodes;
With Ab as(
Select user_login, user_desc, active_yesno, last_modified_by from his_user
),
bc as(
Select user_name, created_date_time, last_modified_by from his_user
),
ca as (
Select a.user_login, a.user_desc, a.active_yesno, a.last_modified_by, b.user_name, b.created_date_time from ab a
join bc b on a.last_modified_by = b.last_modified_by
)
select case
when user_desc like '%Hospital Administrative Staff%' then 'Admin'
when user_desc like '%Lab technician%' then 'Lab'
else user_desc
end as Modify
from ca;
With Ab as(
Select user_login, user_desc, active_yesno, last_modified_by from his_user
),
bc as(
Select user_name, created_date_time, last_modified_by from his_user
),
ca as (
Select a.user_login, a.user_desc, a.active_yesno, a.last_modified_by, b.user_name, b.created_date_time from ab a
join bc b on a.last_modified_by = b.last_modified_by
)
select case
when user_desc like '%hospital administrative staff then admin%' then 'Admin'
when user_desc like '%Lab technician%' then 'Lab'
else user_desc
end as Modify
from ca;
With Ab as(
Select user_login, user_desc, active_yesno, last_modified_by from his_user
),
bc as(
Select user_name, created_date_time, last_modified_by from his_user
),
ca as (
Select a.user_login, a.user_desc, a.active_yesno, a.last_modified_by, b.user_name, b.created_date_time from ab a
join bc b on a.last_modified_by = b.last_modified_by
)
select case
when user_desc like '%hospital administrative staff then admin%' then 'Admin'
when user_desc like '%Lab technician%' then 'Lab'
end as Modify
from ca;
With Ab as(
Select user_login, user_desc, active_yesno, last_modified_by from his_user
),
bc as(
Select user_name, created_date_time, last_modified_by from his_user
),
ca as (
Select a.user_login, a.user_desc, a.active_yesno, a.last_modified_by, b.user_name, b.created_date_time from ab a
join bc b on a.last_modified_by = b.last_modified_by
)
select * from ca;
With Ab as(
Select user_login, user_desc, active_yesno, last_modified_by from his_user
),
bc as(
Select user_name, created_date_time, last_modified_by from his_user
),
ca as (
Select a.user_login, a.user_desc, a.active_yesno, a.last_modified_by, b.user_name, b.created_date_time from ab a
join bc b on a.last_modified_by = b.last_modified_by
);
With Ab as(
Select user_login, user_desc, active_yesno, last_modified_by from his_user
),
bc as(
Select user_name, created_date_time, last_modified_by from his_user
),
ca as (
Select a.user_login, a.user_desc, a.active_yesno, a.last_modified_by, b.user_name, b.created_date_time from ab a
join bc b on a.last_modified_by = b.last_modified_by
)
select * from ca;
With Ab as(
Select user_login, user_desc, active_yesno, last_modified_by from his_user
),
bc as(
Select user_name, created_date_time, last_modified_by from his_user
)
Select a.user_login, a.user_desc, a.active_yesno, a.last_modified_by, b.user_name, b.created_date_time from ab a
join bc b on a.last_modified_by = b.last_modified_by;
Select a.user_login, a.user_desc, a.active_yesno, a.last_modified_by, b.user_name, b.created_date_time from ab a
join bc b on a.last_modified_by = b.last_modified_by;
With Ab as(
Select user_login, user_desc, active_yesno, last_modified_by from his_user
),
bc as(
Select user_name, created_date_time, last_modified_by from his_user
)
Select * from ab;
With Ab as(
Select user_login, user_desc, activ_yesno, last_modified_by from his_user
),
bc as(
Select user_name, created_date_time, last_modified_by from his_user
)
Select * from ab;
use Bill_db;
Select * from ab;
Select * from ab;
select * from his_user;
Select extract(utc_timestamp(), 12, 8);
Select substr(utc_timestamp(), 12, 8);
Select substr(utc_timestamp(), 12, 7);
Select utc_timestamp();
Select substr(utc_timestamp(), 1, 10);
Select substr(utc_timestamp, 1, 10);
Select utc_timestamp();
Select(utcnow);
Select * from bill;
select date_format(last_modified_date_time,'%d-%m-%y') from bill;
select max(last_modified_date_time) from bill;
select cast(last_modified_date_time as date) as date from bill;
select date_format(01-01-2015,'%d-%m-%y') from bill;
Select * from bill;
select date_format(last_modified_date_time,'%d-%m-%y') from bill;
Select * from bill;
select date_format(last_modified_date_time,'%y-%m-%d') from bill;
select date_time(last_modified_date_time) from bill;
select date(last_modified_date_time, dd-mm-yyyy) from bill;
select date(last_modified_date_time,'dd-mm-yyyy') from bill;
select date(last_modified_date_time) from bill;
select date(last_modified_date_time,yyyy-mm-dd) from bill;
select date_format(last_modified_date_time) from bill;
select date(last_modified_date_time) from bill;
select substr(last_modified_date_time,1,10) from bill;
select substr(last_modified_date_time,1,9) from bill;
select substring(last_modified_date_time,1,9) from bill;
select substring(last_modified_date_time,0,9) from bill;
select substr(0,9) from bill;
select substr(last_modified_date_time,0,9) from bill;
Select * from bill;
use Bill_db;
Select * from bill;
select substr(last_modified_date_time,0,9) from bill;
select substr(last_modified_date_time,0,9) from bill;
Select * from bill;
select substr(last_modified_date_time,0,9) from bill;
select last_modified_date_time from bill;
With cte_1 as (
Select patient_name, mrd_number, bill_number, last_modified_by from bill),
cte_2 as (
Select description, debit_amount, last_modified_by from bill_details),
cte_3 as (
Select user_name, user_desc, last_modified_by from his_user)
Select a.patient_name, a.mrd_number,b.description, a.bill_number, b.debit_amount, c.user_name, c.user_desc, c.last_modified_by from cte_1 a
join cte_2 b on a.last_modified_by = b.last_modified_by
join cte_3 c on a.last_modified_by = c.last_modified_by;
With cte_1 as (
Select patient_name, mrd_number, bill_number, last_modified_by from bill),
cte_2 as (
Select description, debit_amount, last_modified_by from bill_details),
cte_3 as (
Select user_name, user_desc, last_modified_by from his_user)
Select * from cte_1 join cte_2 on cte_1.last_modified_by = cte_2.last_modified_by
join cte_3 on cte_1.last_modified_by = cte_3.last_modified_by;
With cte_1 as (
Select patient_name, mrd_number, bill_number, last_modified_by from bill),
cte_2 as (
Select description, debit_amount, last_modified_by from bill_details),
cte_3 as (
Select user_name, user_desc, last_modified_by from his_user)
Select * from cte_1;
Select * from his_user;
Select * from bill_details;
Select * from bill;
Select * from his_user;
With cte_1 as
(Select debit_amount, paid_amount, patient_id from bill)
Select * from cte_1;
With cte_1 as
(Select debit_amount, paid_amount, patient_id from bill)
Select * from cte_1;
Select * from bill;
With Join_t as 
(Select patient_name, bill_id
from bill
)
Select * from join_t;
With Join_t as 
(Select patient_name, description, bill_id
from bill
)
Select * from join_t;
With Join_t as 
(Select b.patient_name, b.visit_type, b.bill_number, b.debit_amount, bd.description, bd.last_modified_date_time, bd.bill_id
from bill b
left join  bill_details bd on bd.last_modified_by = b.last_modified_by
group by b.patient_name, b.visit_type, b.bill_number, b.debit_amount, bd.description, bd.last_modified_date_time, bd.bill_id
),
Join_2 as
(Select b.patient_name, b.visit_type, b.bill_number, b.debit_amount, bd.description, bd.last_modified_date_time, bd.bill_id
from bill b
right join  bill_details bd on bd.last_modified_by = b.last_modified_by
group by b.patient_name, b.visit_type, b.bill_number, b.debit_amount, bd.description, bd.last_modified_date_time, bd.bill_id
)
Select * from Join_t
union
select * from Join_2;
With Join_t as 
(Select b.patient_name, b.visit_type, b.bill_number, b.debit_amount, bd.description, bd.last_modified_date_time, bd.bill_id
from bill b
left join  bill_details bd on bd.last_modified_by = b.last_modified_by
group by b.patient_name, b.visit_type, b.bill_number, b.debit_amount, bd.description, bd.last_modified_date_time, bd.bill_id
),
Join_2 as
(Select b.patient_name, b.visit_type, b.bill_number, b.debit_amount, bd.description, bd.last_modified_date_time, bd.bill_id
from bill b
right join  bill_details bd on bd.last_modified_by = b.last_modified_by
group by b.patient_name, b.visit_type, b.bill_number, b.debit_amount, bd.description, bd.last_modified_date_time, bd.bill_id
);
With Join_t as 
(Select b.patient_name, b.visit_type, b.bill_number, b.debit_amount, bd.description, bd.last_modified_date_time, bd.bill_id
from bill b
left join  bill_details bd on bd.last_modified_by = b.last_modified_by
group by b.patient_name, b.visit_type, b.bill_number, b.debit_amount, bd.description, bd.last_modified_date_time, bd.bill_id
)
Select count(*) from Join_t;
With Join_t as 
(Select b.patient_name, b.visit_type, b.bill_number, b.debit_amount, bd.description, bd.last_modified_date_time, bd.bill_id
from bill b
left join  bill_details bd on bd.last_modified_by = b.last_modified_by
group by b.patient_name, b.visit_type, b.bill_number, b.debit_amount, bd.description, bd.last_modified_date_time, bd.bill_id
)
Select * from Join_t;
Select count(*) from
(Select b.patient_name, b.visit_type, b.bill_number, b.debit_amount, bd.description, bd.last_modified_date_time, bd.bill_id
from bill b
cross join  bill_details bd
) as a;
Select b.patient_name, b.visit_type, b.bill_number, b.debit_amount, bd.description, bd.last_modified_date_time, bd.bill_id
from bill b
cross join  bill_details bd;
Select count(*) from bill_details;
Select count(*) from bill;
Select count(*) from
(Select b.patient_name, b.visit_type, b.bill_number, b.debit_amount, bd.description, bd.last_modified_date_time, bd.bill_id
from bill b
inner join bill_details bd on bd.last_modified_by = b.last_modified_by
group by b.patient_name, b.visit_type, b.bill_number, b.debit_amount, bd.description, bd.last_modified_date_time, bd.bill_id
) as a;
Select count(*) from
(Select b.patient_name, b.visit_type, b.bill_number, b.debit_amount, bd.description, bd.last_modified_date_time, bd.bill_id
from bill b
cross join bill_details bd on bd.last_modified_by = b.last_modified_by
group by b.patient_name, b.visit_type, b.bill_number, b.debit_amount, bd.description, bd.last_modified_date_time, bd.bill_id
) as a;
Select b.patient_name, b.visit_type, b.bill_number, b.debit_amount, bd.description, bd.last_modified_date_time, bd.bill_id
from bill b
cross join bill_details bd on bd.last_modified_by = b.last_modified_by
group by b.patient_name, b.visit_type, b.bill_number, b.debit_amount, bd.description, bd.last_modified_date_time, bd.bill_id;
Select b.patient_name, b.visit_type, b.bill_number, b.debit_amount, bd.description, bd.last_modified_date_time, bd.bill_id
from bill b
left join  bill_details bd on bd.last_modified_by = b.last_modified_by
group by b.patient_name, b.visit_type, b.bill_number, b.debit_amount, bd.description, bd.last_modified_date_time, bd.bill_id
union
Select b.patient_name, b.visit_type, b.bill_number, b.debit_amount, bd.description, bd.last_modified_date_time, bd.bill_id
from bill b
right join bill_details bd on bd.last_modified_by = b.last_modified_by
group by b.patient_name, b.visit_type, b.bill_number, b.debit_amount, bd.description, bd.last_modified_date_time, bd.bill_id;
Select count(*) from
(Select b.patient_name, b.visit_type, b.bill_number, b.debit_amount, bd.description, bd.last_modified_date_time, bd.bill_id
from bill b
Full outer join bill_details bd on bd.last_modified_by = b.last_modified_by
group by b.patient_name, b.visit_type, b.bill_number, b.debit_amount, bd.description, bd.last_modified_date_time, bd.bill_id
having b.patient_name is null or b.visit_type is null or b.bill_number is null or b.debit_amount is null
) as a;
Select count(*) from
(Select b.patient_name, b.visit_type, b.bill_number, b.debit_amount, bd.description, bd.last_modified_date_time, bd.bill_id
from bill b
Right join bill_details bd on bd.last_modified_by = b.last_modified_by
group by b.patient_name, b.visit_type, b.bill_number, b.debit_amount, bd.description, bd.last_modified_date_time, bd.bill_id
having b.patient_name is null or b.visit_type is null or b.bill_number is null or b.debit_amount is null
) as a;
Select count(*) from
(Select b.patient_name, b.visit_type, b.bill_number, b.debit_amount, bd.description, bd.last_modified_date_time, bd.bill_id
from bill b
right join bill_details bd on bd.last_modified_by = b.last_modified_by
group by b.patient_name, b.visit_type, b.bill_number, b.debit_amount, bd.description, bd.last_modified_date_time, bd.bill_id
) as a
where patient_name is null or visit_type is null or bill_number is null or debit_amount is null;
Select count(*) from
(Select b.patient_name, b.visit_type, b.bill_number, b.debit_amount, bd.description, bd.last_modified_date_time, bd.bill_id
from bill b
right join bill_details bd on bd.last_modified_by = b.last_modified_by
group by b.patient_name, b.visit_type, b.bill_number, b.debit_amount, bd.description, bd.last_modified_date_time, bd.bill_id
) as a
where patient_name is null or visit_type is null or bill_number is null or b.debit_amount is null;
Select count(*) from
(Select b.patient_name, b.visit_type, b.bill_number, b.debit_amount, bd.description, bd.last_modified_date_time, bd.bill_id
from bill b
Right join bill_details bd on bd.last_modified_by = b.last_modified_by
group by b.patient_name, b.visit_type, b.bill_number, b.debit_amount, bd.description, bd.last_modified_date_time, bd.bill_id
having b.patient_name is null or b.visit_type is null or b.bill_number is null or b.debit_amount is null
) as a;
Select count(*) from
(Select b.patient_name, b.visit_type, b.bill_number, b.debit_amount, bd.description, bd.last_modified_date_time, bd.bill_id
from bill b
left join bill_details bd on bd.last_modified_by = b.last_modified_by
group by b.patient_name, b.visit_type, b.bill_number, b.debit_amount, bd.description, bd.last_modified_date_time, bd.bill_id
) as a
where description is null or last_modified_date_time is null or bill_id is null;
Select count(*) from
(Select b.patient_name, b.visit_type, b.bill_number, b.debit_amount, bd.description, bd.last_modified_date_time, bd.bill_id
from bill b
left join bill_details bd on bd.last_modified_by = b.last_modified_by
group by b.patient_name, b.visit_type, b.bill_number, b.debit_amount, bd.description, bd.last_modified_date_time, bd.bill_id
) as a
where bd.description is null or bd.last_modified_date_time is null or bd.bill_id is null;
Select count(*) from
(Select b.patient_name, b.visit_type, b.bill_number, b.debit_amount, bd.description, bd.last_modified_date_time, bd.bill_id
from bill b
left join bill_details bd on bd.last_modified_by = b.last_modified_by
group by b.patient_name, b.visit_type, b.bill_number, b.debit_amount, bd.description, bd.last_modified_date_time, bd.bill_id
having bd.description is null or bd.last_modified_date_time is null or bd.bill_id is null
) as a;
Select b.patient_name, b.visit_type, b.bill_number, b.debit_amount, bd.description, bd.last_modified_date_time, bd.bill_id
from bill b
left join bill_details bd on bd.last_modified_by = b.last_modified_by
group by b.patient_name, b.visit_type, b.bill_number, b.debit_amount, bd.description, bd.last_modified_date_time, bd.bill_id
having bd.description is null or bd.last_modified_date_time is null or bd.bill_id is null;
Select b.patient_name, b.visit_type, b.bill_number, b.debit_amount, bd.description, bd.last_modified_date_time, bd.bill_id
from bill b
left join bill_details bd on bd.last_modified_by = b.last_modified_by
group by b.patient_name, b.visit_type, b.bill_number, b.debit_amount, bd.description, bd.last_modified_date_time, bd.bill_id
having b.patient_name is null or b.visit_type is null or b.bill_number is null or b.debit_amount is null;
Select b.patient_name, b.visit_type, b.bill_number, b.debit_amount, bd.description, bd.last_modified_date_time, bd.bill_id
from bill b
left join bill_details bd on bd.last_modified_by = b.last_modified_by
group by b.patient_name, b.visit_type, b.bill_number, b.debit_amount, bd.description, bd.last_modified_date_time, bd.bill_id;
Select patient_name, count(*) from  
(Select b.patient_name, b.visit_type, b.bill_number, b.debit_amount, bd.description, bd.last_modified_date_time, bd.bill_id
from bill b
join bill_details bd on bd.last_modified_by = b.last_modified_by
group by b.patient_name, b.visit_type, b.bill_number, b.debit_amount, bd.description, bd.last_modified_date_time, bd.bill_id 
) as t
Group by patient_name;
Select count(*) from 
(Select b.patient_name, b.visit_type, b.bill_number, b.debit_amount, bd.description, bd.last_modified_date_time, bd.bill_id
from bill b
join bill_details bd on bd.last_modified_by = b.last_modified_by
group by b.patient_name, b.visit_type, b.bill_number, b.debit_amount, bd.description, bd.last_modified_date_time, bd.bill_id 
) as t;
Select count(*) from 
(Select b.patient_name, b.visit_type, b.bill_number, b.debit_amount, bd.description, bd.last_modified_date_time, bd.bill_id
from bill b
join bill_details bd on bd.last_modified_by = b.last_modified_by
group by b.patient_name, b.visit_type, b.bill_number, b.debit_amount, bd.description, bd.last_modified_date_time, bd.bill_id 
) as t;
Select b.patient_name, b.visit_type, b.bill_number, b.debit_amount, bd.description, bd.last_modified_date_time, bd.bill_id
from bill b
join bill_details bd on bd.last_modified_by = b.last_modified_by
group by b.patient_name, b.visit_type, b.bill_number, b.debit_amount, bd.description, bd.last_modified_date_time, bd.bill_id;
Select count(*) from 
(Select b.patient_name, b.visit_type, b.bill_number, b.debit_amount, bd.description, bd.last_modified_date_time, bd.bill_id
from bill b
join bill_details bd on bd.last_modified_by = b.last_modified_by
group by b.patient_name, b.visit_type, b.bill_number, b.debit_amount, bd.description, bd.last_modified_date_time, bd.bill_id 
) as t;
Select * from bill;
Select count(*) from 
(Select b.patient_name, b.visit_type, b.bill_number, b.debit_amount, bd.description, bd.last_modified_date_time, bd.bill_id
from bill b
join bill_details bd on bd.last_modified_by = b.last_modified_by
group by b.patient_name, b.visit_type, b.bill_number, b.debit_amount, bd.description, bd.last_modified_date_time, bd.bill_id 
) as t;
Select count(*) from 
(Select b.patient_name, b.visit_type, b.bill_number, b.debit_amount, bd.description, bd.last_modified_date_time, bd.bill_id
from bill b
join bill_details bd on bd.last_modified_by = b.last_modified_by
group by b.patient_name, b.visit_type, b.bill_number, b.debit_amount, bd.description, bd.last_modified_date_time, bd.bill_id 
) as t;
Select count(*) from 
(Select b.patient_name, b.visit_type, b.bill_number, b.debit_amount, bd.description, bd.last_modified_date_time, bd.bill_id
from bill b
join bill_details bd on bd.last_modified_by = b.last_modified_by
group by b.patient_name, b.visit_type, b.bill_number, b.debit_amount, bd.description, bd.last_modified_date_time, bd.bill_id
);
Select b.patient_name, b.visit_type, b.bill_number, b.debit_amount, bd.description, bd.last_modified_date_time, bd.bill_id
from bill b
join bill_details bd on bd.last_modified_by = b.last_modified_by
group by b.patient_name, b.visit_type, b.bill_number, b.debit_amount, bd.description, bd.last_modified_date_time, bd.bill_id;
Select b.patient_name, b.visit_type, b.bill_number, b.debit_amount, bd.description, bd.last_modified_date_time, bd.bill_id
from bill b
join bill_details bd on bd.last_modified_by = b.last_modified_by
group by b.patient_name, b.visit_type, b.bill_number, b.debit_amount;
Select b.patient_name, b.visit_type, b.bill_number, b.debit_amount, bd.description, bd.last_modified_date_time, bd.bill_id
from bill b
join bill_details bd on bd.last_modified_by = b.last_modified_by
group by b.patient_name, b.visit_type, b.bill_number, b.debit_amount, bd.description, bd.last_modified_date_time, bd.bill_id;
Select b.patient_name, b.visit_type, b.bill_number, b.debit_amount, bd.description, bd.last_modified_date_time, bd.bill_id
from bill b
join bill_details bd on bd.last_modified_by = b.last_modified_by
group by b.bill_number, b.patient_name;
Select b.patient_name, b.visit_type, b.bill_number, b.debit_amount, bd.description, bd.last_modified_date_time, bd.bill_id
from bill b
join bill_details bd on bd.last_modified_by = b.last_modified_by;
Select * from bill_details;
Select * from bill;
Select * from bill;
use bill_db;
Select * from bill;
SELECT * FROM bill_db.his_user;
SELECT * FROM bill_db.bill_details;
SELECT * FROM bill_db.bill;
Select * from bill;
select * from his_user
where user_name in ('ordercom', 'nurse', 'adt');
Select * from his_user;
Select * from his_user
where last_modified_by like '%adt%';
Select * from his_user
where user_name like '%adt%';
Select * from his_user;
Select * from his_user
where name like '%adt%';
Select * from his_user;
Select concat(user_desc, " ?? ", user_name, " ", "modify_by", " ", last_modified_by) as modified_name from his_user;
Select concat(user_desc, "??", user_name, " ", "modify_by", " ", last_modified_by) as modified_name from his_user;
Select concat(user_desc, " ", user_name, " ", "modify_by", " ", last_modified_by) from his_user;
Select * from his_user;
Select concat(user_desc, "--", user_name) as concati from his_user;
Select concat(user_desc, "--", user_name) from his_user;
Select * from his_user;
Select concat('user_desc', " ", 'user_name') from his_user;

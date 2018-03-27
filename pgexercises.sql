SELECT * 
FROM cd.facilities; 

SELECT name, membercost 
FROM cd.facilities;

SELECT * 
FROM cd.facilities 
WHERE membercost > 0;

SELECT facid, name, membercost, monthlymaintenance 
FROM cd.facilities 
WHERE (membercost > 0) and (membercost < 1/50.0 * monthlymaintenance);

SELECT * 
FROM cd.facilities 
WHERE name ILIKE '%Tennis%';

SELECT * 
FROM cd.facilities 
WHERE facid in (1,5);

SELECT name, case when (monthlymaintenance > 100) then 'expensive' else 'cheap' end as cost 
from cd.facilities;

select memid, surname, firstname, joindate 
from cd.members 
where joindate >= '2012-09-01';

select distinct surname 
from cd.members 
order by surname asc 
limit 10;

select surname 
from cd.members 
union select name from cd.facilities;

select max(joindate) as latest from cd.members;
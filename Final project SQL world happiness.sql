describe world.project;   # We are able to use DESCRIBE  to see data type or structure of table
SELECT  # We use SELECT statement to select data form a database on this project we are going use database csv file ( SQL does not real excel file)
    *
FROM
    world.project;
    
select count(Country) from world.project  # we are able to use COUNT() statement to count the total of value in that specific column

select * from world.project limit 10; #we are able to use LIMIT clause follow by number to retrive top row of data

select sum(score) from world.project  # we are able to use SUM()function to sum the column's value

select avg(score) from world.project # we are able to use AVG() function returns the average of value of an expression (NULL values are ignored)

select min(score) from world.project # MIN() function returns smallest value of the selected column

select max(score) from world.project # MAX() function returns largest value of the selected column

select regional , count(country) from world.2020happiness group by Regional  # the GROUP BY is used to get the summery database on one ,more groups or more column

select country, regional from world.2020happiness where generosity >= 0  # we are able to use WHERE to filter record to meet some critiria for example we wanted to see the country and regional that have generosity score 0 or more.

select country, regional,
case regional 
     when 'western europe' then 'w'
     end as coding 
     from world.2020happiness  # we are able to CASE WHEN statement goes through coditions and returns a value when the frist condition is met.
     
select * from world.project inner join world.2020happiness on project.country = 2020happiness.country # We are able to use join clause to combine tables, more column or more rows. 
select project.country, 2020happiness.regional, project.score from world.project inner join world.2020happiness on project.country =2020happiness.country # this example
select project.country, 2020happiness.regional, project.score from world.project inner join world.2020happiness on project.country =2020happiness.country limit 10;     





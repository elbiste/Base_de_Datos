create table Company (
ID_Company int primary key not null,
Name_company varchar(60),
City_company varchar(60),
NBoss_company varchar(40),
Company_number varchar(11)
);

create procedure ECompany
@ID_c int,
@Name_c varchar(60),
@City_c varchar(60),
@NBoss varchar(40),
@Companyn varchar(11)
as
insert into Company values (@ID_c, @Name_c, @City_c, @NBoss, @Companyn);

exec ECompany 1, 'UglyPig','Canada','Weston Hotson','6658424564';
exec ECompany 2, 'Patitofeo','London','Patricia Obrien', '1245869321';
exec ECompany 3, 'Omega Coms', 'E.U.A','Oliver Gate','678903452';
exec ECompany 4, 'Alpha US', 'Mexico', 'Toluca','5588459076';
exec ECompany 5, 'Honor y Gloria', 'Mexico', 'Puerto Vallarta', '5523451237';

create procedure VallC
as
select * from Company;

exec VallC;

alter table Personal_ASS
add ID_Com int foreign key references Company(ID_Company);

update Personal_ASS set ID_Com=1 where ID_Assitant=2;

update Personal_ASS set ID_Com=3 where ID_Com is null;

update Personal_ASS set ID_Com=4 where ID_Assitant=2 or ID_Assitant=5;

update Personal_ASS set ID_Com=1 where ID_Assitant=1 or ID_Assitant=4;

update Personal_ASS set ID_Com=2 where ID_Assitant=1;

update Personal_ASS set phone_number=1234567891 where phone_number is null;

update Personal_ASS set phone_number=5523094512 where ID_Assitant=2 or ID_Assitant=6;


alter table Personal_ASS
Add phone_number varchar(11);

update Personal_ASS set phone_number='5577748793' where ID_Assitant=1; 


select count(*) from Sales where year(sales_date)=2026;
select max(total_price) total_price from Sales;
select * from Personal_ASS where ID_Assitant in(1,3,4,5);

select * from Personal_ASS;
select * from Products;
select * from Sales;
select * from Company;


select count(*) from Sales;

select  distinct year(birthday_date) from Personal_ASS order by birthday_date asc;

select distinct city from Personal_ASS;

create procedure Allass
as
select * from Personal_ASS
Go;

exec Allass;

create procedure IncreastASS
@ID_ass int,
@Name varchar(40),
@Lastname varchar(50),
@Gender varchar(3),
@Date date,
@City varchar(50)
as
insert into Personal_ASS values (@ID_ass, @Name, @Lastname, @Gender, @Date, @City);


exec IncreastASS 6,'Mario', 'Elias', 'M', '2001-01-01','Japon';

select CONCAT (firt_name, ' ', last_name) as full_name_ASS from Personal_ASS;

select firt_name from Personal_ASS order by len(firt_name), firt_name;

select firt_name, last_name, city from Personal_ASS  where city in ('Mexico','New York') order by firt_name, last_name, city;


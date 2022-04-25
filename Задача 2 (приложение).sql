-- приложение к задаче 2
-- заполнение начальных таблиц данными

drop table if exists #payments_principal
create table #payments_principal
(
  payment_dt date,
  agr_id smallint,
  payment_sum int
)

drop table if exists #payments_interest
create table #payments_interest
(
  payment_dt date,
  agr_id smallint,
  payment_sum int
)


insert into #payments_principal values ('2019-05-11',31,8281)
insert into #payments_principal values ('2019-05-12',7,4622)
insert into #payments_principal values ('2019-05-13',5,7686)
insert into #payments_principal values ('2019-07-01',1,9917)
insert into #payments_principal values ('2019-07-23',1,6534)
insert into #payments_principal values ('2019-08-20',64,4336)
insert into #payments_principal values ('2019-08-24',3,7464)
insert into #payments_principal values ('2019-08-25',9,8505)
insert into #payments_principal values ('2019-08-27',1,9857)
insert into #payments_principal values ('2019-07-07',7,6294)
insert into #payments_principal values ('2019-07-17',7,3182)
insert into #payments_principal values ('2019-08-28',4,9708)
insert into #payments_principal values ('2019-08-29',4,8632)
insert into #payments_principal values ('2019-08-30',3,8303)
insert into #payments_principal values ('2019-09-01',7,3141)
insert into #payments_principal values ('2019-08-25',1,9139)
insert into #payments_principal values ('2019-08-25',2,7624)
insert into #payments_principal values ('2019-09-01',7,3793)
insert into #payments_principal values ('2019-09-01',3,3260)
insert into #payments_principal values ('2019-08-21',5,9002)
insert into #payments_principal values ('2019-08-22',2,5500)
insert into #payments_principal values ('2019-08-23',2,3980)
insert into #payments_principal values ('2019-08-29',2,5849)


insert into #payments_interest values ('2019-05-11',31,98)
insert into #payments_interest values ('2019-05-12',7,90)
insert into #payments_interest values ('2019-05-13',5,39)
insert into #payments_interest values ('2019-07-01',1,82)
insert into #payments_interest values ('2019-07-23',1,59)
insert into #payments_interest values ('2019-08-20',50,96)
insert into #payments_interest values ('2019-08-24',3,1)
insert into #payments_interest values ('2019-08-25',9,22)
insert into #payments_interest values ('2019-08-27',1,95)
insert into #payments_interest values ('2019-07-07',7,79)
insert into #payments_interest values ('2019-07-17',7,72)
insert into #payments_interest values ('2019-08-28',4,61)
insert into #payments_interest values ('2019-08-29',4,49)
insert into #payments_interest values ('2019-08-30',3,78)
insert into #payments_interest values ('2019-09-01',7,29)
insert into #payments_interest values ('2019-08-25',1,88)
insert into #payments_interest values ('2019-08-25',2,77)
insert into #payments_interest values ('2019-09-01',6,6)
insert into #payments_interest values ('2019-09-01',3,18)
insert into #payments_interest values ('2019-08-21',5,15)
insert into #payments_interest values ('2019-08-22',2,28)
insert into #payments_interest values ('2019-08-23',2,23)
insert into #payments_interest values ('2019-08-29',2,84)

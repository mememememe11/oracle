SELECT * from tab;
create table numbers (num number);
insert into numbers values(8);
select num from numbers;
select num from numbers order by num;
select num from numbers order by num desc;
insert into numbers values(5);
insert into numbers values(6);
insert into numbers values(4);
insert into numbers values(2);

commit;
create table names (name varchar2(20));
select * from user_tables;


create table cars as select * from numbers;

desc cars;

-- cars 테이블에 name 칼름 추가 타입 varchar2(25)
select * from cars;
alter table cars add(name varchar2(25));
alter table cars add(address varchar2(85));
update cars set name ='줄리' where num = 5;
update cars set name ='감찬' where name is null;
update cars set address ='대구 동구 신암동 123번지';

create view jae as select num, name from cars;

select * from jae;
select distinct name from jae;
select sum(num), name from jae group by name;
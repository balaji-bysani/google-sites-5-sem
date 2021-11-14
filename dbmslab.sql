use balaji;
drop table worker,bonus;
create table worker(id int not null primary key,
                    f_name varchar(20),
                    l_name varchar(20),
                    salary int,
                    joining_date date,
                    dept varchar(20));
create table bonus(worker_ref_id int,
                    bonus_amt int,
                    bonus_date date,
                    foreign key (worker_ref_id) references worker(id) on delete cascade);
insert into worker values(001,"Monika","Arora",10000,'14/10/20',"HR");
insert into bonus values(001,5000,'16/12/20');
select * from worker;
select * from bonus;
-- table 1 celebrity

create table celebrity(
    cl_id number, --pk
	cl_name varchar2(10) NOT NULL,
	birth date ,
    agency varchar2(100), 
    job varchar2(100) , 
    constraint pk_celebrity_cl_id primary key(cl_id)
);




-- table 2 programs
create table programs(
    pr_id number, --pk
	pr_name varchar2(100) NOT NULL,
    start_date date ,
    end_date date,
    producer varchar2(10) ,
    br_id number NOT NULL, --fk
    constraint pk_programs_pr_id primary key(pr_id),
    constraint fk_programs_br_id foreign key (br_id) references broadcast(br_id)
);

-- table 3 broadcast
create table broadcast(
	br_id number, --pk
    br_name varchar2(10) NOT NULL,
    loc varchar2(100),
    constraint pk_broadcast_br_id primary key(br_id)
);



-- table 4 celebrity_programs_match
create table cl_br_match(
    cl_id number , --fk
    pr_id number , --fk
    constraint fk_cl_br_match_cl_id foreign key (cl_id) references celebrity(cl_id),
    constraint fk_cl_br_match_pr_id foreign key (pr_id) references programs(pr_id)
);


--
insert into  celebrity (cl_id, cl_name, birth, agency, job) values (1, '유재석', '1972/08/14', 'FNC',	'entertainer');


--
insert into  programs (pr_id, pr_name, start_date, producer, br_id) values (1, '무한도전', '2006/05/06', '2018/03/31',	'김태호', 2)


--
insert into  broadcast (br_id, br_name, loc) values (1, 'KBS2', '서울시 영등포구')


--
insert into  cl_br_match (cl_id, pr_id) values (1, 1)
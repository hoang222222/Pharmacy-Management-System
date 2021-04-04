create database pharmacydb;

use pharmacydb;
create table manufactor(
	man_id int(10) AUTO_INCREMENT PRIMARY KEY,
    man_name nvarchar(50) not null,
    man_add nvarchar(50) not null,
    man_exp nvarchar(50) not null,
    man_phone varchar(50) not null
);

create table medicine(
	med_id int AUTO_INCREMENT ,
    med_name nvarchar(50) not null,
    med_unitprice int not null,
    med_amount int not null,
    med_exists int(10) not null,
    med_fab date not null,
    med_exp date not null,
    man_id int(10) not null,    
    PRIMARY KEY(med_id, man_id),
    constraint fk_medimanu foreign key (man_id) references manufactor(man_id) on update cascade on delete cascade     
);

create table customer(
	cus_id int auto_increment,
    cus_name nvarchar(50) not null,
    cus_add nvarchar(50) not null,
    cus_phone nvarchar(50) not null,
    cus_birtday date not null,
    cus_total int not null,
    primary key(cus_id)
);
create table nv(
	nv_id int auto_increment,
    nv_name nvarchar(50) not null,
    nv_add nvarchar(50) ,
    nv_birthday date ,
    nv_phone varchar(10) ,
    user_name varchar(20) not null,
    pwd varchar(20) not null,
    primary key(nv_id)
);
create table report(
	report_id int AUTO_INCREMENT ,
    report_date date not null,
    nv_id int not null,
    cus_id int not null,
    total int not null,
    PRIMARY KEY(report_id, nv_id, cus_id),
    constraint fk_reponv foreign key (nv_id) references nv(nv_id) on update cascade on delete cascade,
    constraint fk_repocus foreign key (cus_id) references customer(cus_id) on update cascade on delete cascade
);

create table reportdetail(
	report_id int auto_increment,
    med_id int not null,
    amout int not null,
    primary key(report_id, med_id),
    constraint fk_reporepot foreign key (report_id) references report(report_id) on update cascade on delete cascade,
    constraint fk_repomed foreign key (med_id) references medicine(med_id) on update cascade on delete cascade
);


insert into nv(nv_name,user_name, pwd) value ('nguyen hoang','admin','admin');

insert into manufactor value (1, 'cty a', 'tphcm', '5','1122');
insert into manufactor value (2, 'cty b', 'hn', '7','7654');
insert into manufactor value (3, 'cty d', 'dn', '7','7651');
insert into manufactor value (4, 'cty e', 'qn', '9','7890');
insert into manufactor value (5, 'cty f', 'hp', '10','3455');


insert into medicine value (1, 'thuoc a', 5600, 455, 200, '2021-8-8', '2025-7-8',3);
insert into medicine value (2, 'thuoc b',34535,3535, 200,'2012-5-8','2025-7-18', 2);
insert into medicine value (3, 'thuoc c','345646',35435, 1000,'2011-1-8','2025-7-9', 1);
insert into medicine value (4, 'thuoc d','3535', 12312, 3455,'2021-8-8','2025-7-8', 4);

insert into customer value (1, 'cus a', 'hp', 2423424, '1989-5-4',45345345);
insert into customer value (2, 'cus b', 'tphcm', 6535465, '1990-8-4',98429424);
insert into customer value (3, 'cus c', 'hn', 23424, '1999-10-8',78234234);
insert into customer value (4, 'cunvs d', 'qn', 1231949, '1997-5-4',68992432);
insert into customer value (5, 'cus e', 'dn', 94535, '1995-9-4',35345345);

insert into nv value (2, 'bui tan','qn','1994-7-11',3453543, 'tan', '123');
insert into nv value (3, 'dinh hieu','vt','1994-6-20',4566353, 'dieu', '123');
insert into nv value (4, 'pham duy','la','1999-12-11',746342, 'duy', '123');

insert into report value (1, '2017-5-6',1,1,11212);
insert into report value (2, '2018-12-8',3,2,24324);
insert into report value (3, '2019-1-5',4,3,64534);
insert into report value (4, '2020-7-8',3,4,342532);
insert into report value (5, '2021-1-3',2,5,5323323);

insert into reportdetail value (1, 2, 3435);
insert into reportdetail value (1, 4, 3435);
insert into reportdetail value (2, 3, 42342);
insert into reportdetail value (2, 2, 312335);
insert into reportdetail value (3, 1, 63422);
insert into reportdetail value (3, 2, 2324);
insert into reportdetail value (4, 2, 12313);
insert into reportdetail value (4, 1, 834234);

select a.med_id, a.med_name, a.med_unitprice, a.med_amount, a.med_exists, a.med_fab, a.med_exp, b.man_name from medicine a, manufactor b where a.man_id = b.man_id;

select man_id from manufactor where man_name='cty a';
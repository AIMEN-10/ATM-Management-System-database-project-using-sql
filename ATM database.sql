Create DATABASE ATM_RECORD_MANAGEMENT_SYSTEM
create table Bank(
Bank_id varchar(10) primary key,
Bank_Name varchar(10),
Bank_Address Varchar(80)
)
create table ATM(
ATM_id varchar(10) primary key,
ATM_Name varchar(10),
ATM_Address varchar(80)
)
create table customer(
c_id varchar(10) primary key,
city varchar(20),  
house_no varchar(20),
street varchar(20),
Firstname varchar(20),
Lastname varchar(20)
)
 create table Account(
 Acc_no varchar(20) primary key,
 Acc_type varchar(20),
Acc_id varchar(10) references customer (c_id)
 )

 create table saving(
 Acc_no varchar(20) primary key,
 Account_balance int
 )

 create table certificate_deposit(
 Acc_no varchar(20) primary key,
 Interest varchar(20) 
 )
create table ATM_card(
card_no int primary key,
card_cvv varchar(20),
card_Expiraydate date,
card_id varchar(10) references customer (c_id)
)
create table Transacttion(
Trans_id varchar(10)primary key,
Trans_time time ,
Trans_type varchar(20),
Trans_amount varchar(20),
T_Trans_id  varchar(10)references customer (c_id)
)
drop table operator
create table operator (
operator_id varchar(20) primary key,
operator_name varchar(20) ,
operator_iid varchar (10) references ATM(ATM_id)
)
create table ATM_Technician(
T_id varchar(20) primary key,
T_name varchar(20) 
)
create table Technician_contact(
T_contact varchar(20) primary key,
C_T_id varchar(20) references ATM_Technician(T_id)
)
insert into Bank(Bank_id,Bank_Name,Bank_Address) values (' q3456','HBL','F9 Markaz Islamabad');
insert into ATM(ATM_id,ATM_Name,ATM_Address) values ('A23QI','ICATM_063','6th road rawalpindi');
insert into customer(c_id,city,house_no,street,firstname,lastname) values ('34567','islamabad','5','st_2','Hamid','khan');
insert into Account(Acc_no,Acc_Type,Acc_id) values ('000920008549364','savings','34567');
insert into saving(Acc_no,Account_balance) values ('000920008549364','500000');
insert into certificate_deposit(Acc_no,interest) values ('000920008549364','20000');
insert into ATM_Card(card_no,card_cvv,card_expiraydate,card_id) values ('6682332','234','02/04/2024','34567');
insert into Transacttion(Trans_id,Trans_time,Trans_type,Trans_amount,T_Trans_id) values ('002345','2:30 pm','66667gh','25000','34567');
insert into operator(operator_id,operator_name,operator_iid) values ('4567','Ali Ahmed','A23QI');
insert into ATM_Technician(T_id,T_name) values ('34ewr43','Usama');
insert into Technician_Contact(T_contact,C_T_id) values ('03456798765','34ewr43');
select * from bank
select * from ATM
select * from Customer
select * from Account
select * from ATM_technician
select * from operator
select * from Technician_contact
select * from ATM_card
select * from saving
select * from certificate_deposit
select * from transacttion


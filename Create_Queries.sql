--Employee Table
CREATE TABLE Employees(
    empid int,
    fname varchar(20) not null,
    mname varchar(20),
    lname varchar(20) not null,
    gender varchar(6) not null,
    emptype varchar(20) not null,
    Hno varchar(10),
    country varchar(20),
    city varchar(20),
    state varchar(20),
    date_of_joining varchar(20),
    email varchar(30),
    deptid int,
    password varchar(20) not null
    PRIMARY key(empid),
	FOREIGN KEY(deptid) REFERENCES Department(deptid));


--Patient table
CREATE TABLE patient(
    pid int,
    fname varchar(20) not null,
    lname varchar(20),
    gender varchar(6) not null,
    age int not null,
    blood_group varchar(3),
    doc_id int,
    HNo varchar(10),
    country varchar(20),
    city varchar(16),
    state varchar(20),
    email varchar(30),
    Primary Key(pid));

--test table
 CREATE TABLE test(
    tid int,
    tname varchar(20),
    tcost real,
	testcause varchar(20)
    primary KEY(tid));

--room table
CREATE TABLE room(
    rid int,
    isroomavailable int,
    PRIMARY key(rid));

--Department Table
CREATE TABLE Department(
    deptid int,
    dname  varchar(20),
    PRIMARY key(deptid));

--Medicine Table
CREATE TABLE Medicine(
    Medid int,
    Medname  varchar(20) not null,
	Medcost float not null,
    PRIMARY key(Medid));

--Patient_Test Table
CREATE TABLE Patient_test(
    tid int,
    pid int,
    PRIMARY key(tid,pid),
	FOREIGN key(pid) REFERENCES patient(pid),
    FOREIGN KEY(tid) REFERENCES test(tid));

--Patient_Medicine table
CREATE TABLE Patient_Medicine(
    Medid int,
    pid int,
	quantity int,
	cost float,
    PRIMARY key(Medid,pid),
	FOREIGN key(pid) REFERENCES patient(pid),
    FOREIGN KEY(Medid) REFERENCES Medicine(Medid));


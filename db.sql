DROP DATABASE IF EXISTS XYZ;
CREATE DATABASE XYZ;
USE XYZ;

CREATE TABLE PROJECT (
	ProjectID int NOT NULL,
	ProjectName varchar(255) NOT NULL,
	ProjectStatus varchar(255) NOT NULL,
	ScopeStatus varchar(255) NOT NULL,
	ResourceStatus varchar(255) NOT NULL,
	StatusComment varchar(255),
	PRIMARY KEY (ProjectID)
);

INSERT INTO PROJECT VALUES
(1, "PROJNAME1", "PROJSTATUS1", "SCOPESTATUS1", "RESOURCESTATUS1","STATUSCOMMENT1"),
(2, "PROJNAME2", "PROJSTATUS2", "SCOPESTATUS2", "RESOURCESTATUS2","STATUSCOMMENT2"),
(3, "PROJNAME3", "PROJSTATUS3", "SCOPESTATUS3", "RESOURCESTATUS3","STATUSCOMMENT3"),
(4, "PROJNAME4", "PROJSTATUS4", "SCOPESTATUS4", "RESOURCESTATUS4","STATUSCOMMENT4"),
(5, "PROJNAME5", "PROJSTATUS5", "SCOPESTATUS5", "RESOURCESTATUS5","STATUSCOMMENT5");

CREATE TABLE MANAGER (
	ProjectID int NOT NULL,
	ProjectStatusWeek varchar(255) NOT NULL,
	NumProjectManage int NOT NULL,
	FOREIGN KEY (ProjectID) REFERENCES PROJECT(ProjectID)
);

INSERT INTO MANAGER VALUES
(1, "PROJECTSTATUSWEEK1",1),
(2, "PROJECTSTATUSWEEK2",2),
(3, "PROJECTSTATUSWEEK3",3),
(4, "PROJECTSTATUSWEEK4",4),
(5, "PROJECTSTATUSWEEK5",5);

CREATE TABLE PROJBUDGET (
	PBnumber int NOT NULL,
	ProjectID int NOT NULL,
	ActualSpent int NOT NULL,
	PlannedBudget int NOT NULL,
	BudgetRemaining int NOT NULL,
	PRIMARY KEY (PBnumber),
	FOREIGN KEY (ProjectID) REFERENCES PROJECT(ProjectID)
);

INSERT INTO PROJBUDGET VALUES
(1,1,1000,1000,0),
(2,2,2000,2000,0),
(3,3,3000,3000,0),
(4,4,4000,4000,0),
(5,5,5000,5000,0);

CREATE TABLE MILESTONE (
	ProjectID int NOT NULL,
	MilestoneID int NOT NULL,
	MName varchar(55) NOT NULL,
	Planned date NOT NULL,
	Actual date NOT NULL,
	Comment varchar(255),
	PRIMARY KEY (MilestoneID),
	FOREIGN KEY (ProjectID) REFERENCES PROJECT(ProjectID)
);

INSERT INTO MILESTONE VALUES
(1,1,"MNAME1","2019-11-17","2019-11-17","COMMENT1"),
(2,2,"MNAME2","2019-11-17","2019-11-17","COMMENT2"),
(3,3,"MNAME3","2019-11-17","2019-11-17","COMMENT3"),
(4,4,"MNAME4","2019-11-17","2019-11-17","COMMENT4"),
(5,5,"MNAME5","2019-11-17","2019-11-17","COMMENT5");

CREATE TABLE CONTACT_INFO (
	ContactID int NOT NULL,
	Emails varchar(55) NOT NULL,
	Phone_No varchar(45) NOT NULL,
	PRIMARY KEY (ContactID)
);

INSERT INTO CONTACT_INFO VALUES
(1,"EMAIL1","PHONENO1"),
(2,"EMAIL2","PHONENO2"),
(3,"EMAIL3","PHONENO3"),
(4,"EMAIL4","PHONENO4"),
(5,"EMAIL5","PHONENO5");

CREATE TABLE ADDRESS (
	AddressID int NOT NULL,
	Street_No int NOT NULL,
	Street_Name	varchar(25) NOT NULL,
	City varchar(20) NOT NULL,
	_State varchar(2) NOT NULL,
	ZipCode int	NOT NULL,
	PRIMARY KEY (AddressID)
);

INSERT INTO ADDRESS VALUES
(1,1,"STREETNAME1","CITY1","MI",41835),
(2,2,"STREETNAME2","CITY2","MI",41835),
(3,3,"STREETNAME3","CITY3","MI",41835),
(4,4,"STREETNAME4","CITY4","MI",41835),
(5,5,"STREETNAME5","CITY5","MI",41835);


CREATE TABLE EMPLOYEE (
	SSN	int	NOT NULL,
	AddressID int NOT NULL,
	ContactID int NOT NULL,
	FName VARCHAR(25) NOT NULL,
	LName VARCHAR(25) NOT NULL,
	Emp_ID int NOT NULL,
	Salary int,
	Gender	CHAR(2) NOT NULL,
	Job_Title VARCHAR(25),
	Hire_Date DATE	NOT NULL,
	Birthdate DATE	NOT NULL,
	PRIMARY KEY (SSN),
	FOREIGN KEY (AddressID) REFERENCES ADDRESS(AddressID),
	FOREIGN KEY (ContactID) REFERENCES CONTACT_INFO(ContactID)
);

INSERT INTO EMPLOYEE VALUES
(123678910,1,1,"FNAME1","LNAME1",1,10000,"M","SOFTWARE ENGINEER","01-01-01","1910-10-10"),
(223678910,1,1,"FNAME2","LNAME2",2,20000,"F","SOFTWARE ENGINEER","02-02-02","1920-10-20"),
(323678910,1,1,"FNAME3","LNAME3",3,30000,"M","SOFTWARE ENGINEER","03-03-03","1930-10-20"),
(423678910,1,1,"FNAME4","LNAME4",4,40000,"F","SOFTWARE ENGINEER","04-04-04","1940-10-20"),
(523678910,1,1,"FNAME5","LNAME5",5,50000,"M","SOFTWARE ENGINEER","05-05-05","1950-10-20");

CREATE TABLE WORKS_ON (
	ProjectID int NOT NULL,
	SSN int NOT NULL,
	Hours int,
	FOREIGN KEY (SSN) REFERENCES EMPLOYEE(SSN),
	FOREIGN KEY (ProjectID) REFERENCES PROJECT(ProjectID)
);

INSERT INTO WORKS_ON VALUES
(1,123678910,80),
(2,223678910,80),
(3,323678910,80),
(4,423678910,80),
(5,523678910,80);

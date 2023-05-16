
-- -- table 05
-- CREATE TABLE DEPARTMENT  
-- (  
--     Name VARCHAR(200) NOT NULL, 
--     PRIMARY KEY (Name)  
-- );

-- -- table 07
-- CREATE TABLE CITY  
-- (  
--     Sign_num VARCHAR(20) NOT NULL,
-- 	City_name VARCHAR(10) NOT NULL,
-- 	PRIMARY KEY (Sign_num)
-- );

-- -- table 06a
-- CREATE TABLE ON_DAY  
-- (  
--     On_day VARCHAR(10) NOT NULL,
-- 	PRIMARY KEY (On_day)
-- );


-- -- table 06b
-- CREATE TABLE ON_TIME
-- (
-- 	Session VARCHAR(10) NOT NULL,
-- 	PRIMARY KEY (Session)
-- );

-- -- table 08
-- CREATE TABLE HOSPITAL_TYPE
-- (
-- 	Hospital_type VARCHAR(20) NOT NULL,
-- 	PRIMARY KEY (Hospital_type)
-- );


-- -- table 03
-- CREATE TABLE SERVICE
-- (
-- 	Option VARCHAR(200) NOT NULL,
-- 	PRIMARY KEY (Option)
-- );

-- -- table 09
-- CREATE TABLE HOSPITAL_LEVEL
-- (
-- 	Hospital_level VARCHAR (30) NOT NULL,
-- 	PRIMARY KEY (Hospital_level)
-- );

-- -- table 10
-- CREATE TABLE BUSINESS_REGION
-- (
-- 	Region VARCHAR(10) NOT NULL,
-- 	PRIMARY KEY(Region)
-- );


-- -- table 01
-- CREATE TABLE HOSPITAL_INFO
-- (
-- 	Sign_num VARCHAR(20) NOT NULL,
-- 	Hospital_name VARCHAR(50) NOT NULL,
-- 	Phone_num VARCHAR(15) NOT NULL,
-- 	Hospital_address VARCHAR(100) NOT NULL,
-- 	City_sign_num VARCHAR(20) NOT NULL,
-- 	Hospital_type VARCHAR(20) NOT NULL,
-- 	Hospital_level VARCHAR(30) NOT NULL,
-- 	Region VARCHAR(30) NOT NULL,
-- 	End_date VARCHAR (30),
-- 	Note VARCHAR(50),

-- 	PRIMARY KEY(Sign_num),
-- 	FOREIGN KEY(City_sign_num) REFERENCES CITY(Sign_num) ON UPDATE CASCADE,
-- 	FOREIGN KEY(Hospital_type) REFERENCES HOSPITAL_TYPE(Hospital_type) ON UPDATE CASCADE,
-- 	FOREIGN KEY(Hospital_level) REFERENCES HOSPITAL_LEVEL(Hospital_level) ON UPDATE CASCADE,
-- 	FOREIGN KEY(Region) REFERENCES BUSINESS_REGION(Region) ON UPDATE CASCADE
-- );

-- -- table 02
-- CREATE TABLE HOSPITAL_SERVICE
-- (
-- 	Service_option VARCHAR(200) NOT NULL,
-- 	Sign_num VARCHAR(20) NOT NULL,

-- 	PRIMARY KEY (Service_option, Sign_num),
-- 	FOREIGN KEY (Service_option) REFERENCES SERVICE(Option) ON UPDATE CASCADE,
-- 	FOREIGN KEY (Sign_num) REFERENCES HOSPITAL_INFO(Sign_num) ON UPDATE CASCADE
-- );

-- -- table 04
-- CREATE TABLE HOSPITAL_DEPARTMENT
-- (
-- 	Department_name VARCHAR(200) NOT NULL, 
-- 	Sign_num VARCHAR(20) NOT NULL,

-- 	PRIMARY KEY (Department_name, Sign_num),
-- 	FOREIGN KEY (Department_name) REFERENCES DEPARTMENT(Name) ON UPDATE CASCADE,
-- 	FOREIGN KEY (Sign_num) REFERENCES HOSPITAL_INFO(Sign_num) ON UPDATE CASCADE
-- );

-- -- table 06c
-- CREATE TABLE HOSPITAL_ON_TIME
-- (
-- 	Id INT NOT NULL,
-- 	Sign_num VARCHAR(20) NOT NULL,
-- 	On_day VARCHAR(10) NOT NULL,
-- 	Session VARCHAR(10) NOT NULL,

-- 	PRIMARY KEY(Id),
-- 	FOREIGN KEY (Sign_num) REFERENCES HOSPITAL_INFO(Sign_num) ON UPDATE CASCADE,
-- 	FOREIGN KEY (On_day) REFERENCES ON_DAY(On_day) ON UPDATE CASCADE,
-- 	FOREIGN KEY (Session) REFERENCES ON_TIME(Session) ON UPDATE CASCADE
-- );


-- temp table for imported csv

CREATE TABLE TEMP_IMPORT
(
	Hospital_sign_num VARCHAR(20),
	Hospital_name VARCHAR(50),
	Hospital_type VARCHAR(30) ,
	Phone_num VARCHAR(15) ,
	Hospital_address VARCHAR(100),
	Region VARCHAR(20),
	Hospital_level VARCHAR(30),
	Service_option VARCHAR(200),
    Hospital_department VARCHAR(200),
	End_date VARCHAR (30),
	Fixed_on_time VARCHAR(200) ,
	Note VARCHAR(200),
	City_sign_num VARCHAR(20)
);

-- INSERT INTO ON_DAY VALUES
-- ('星期一'),('星期二'),('星期三'),('星期四'),('星期五'),('星期六'),('星期日');

-- INSERT INTO ON_TIME VALUES
-- ('上午'), ('下午'), ('晚上');

-- INSERT INTO HOSPITAL_TYPE VALUES
-- ('綜合醫院'), ('醫院'), ('精神科醫院');

-- INSERT INTO HOSPITAL_LEVEL VALUES
-- ('區域醫院');

-- INSERT INTO BUSINESS_REGION VALUES
-- ('臺北業務組'),('南區業務組'),('北區業務組'),('中區業務組'),('東區業務組')
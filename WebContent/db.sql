﻿CREATE TABLE  fee_student
   (ROLLNO VARCHAR2(4000), 
NAME VARCHAR(4000), 
EMAIL VARCHAR(4000), 
SEX VARCHAR(4000), 
COURSE VARCHAR(4000), 
FEE NUMBER, 
PAID NUMBER, 
DUE NUMBER, 
ADDRESS VARCHAR(4000), 
CONTACT VARCHAR(4000), 
	 CONSTRAINT FEE_STUDENT_PK PRIMARY KEY (ROLLNO) ENABLE
   )


CREATE TABLE FEE_ACCOUNTANT
   (ID NUMBER, 
	NAME VARCHAR (4000), 
	EMAIL VARCHAR(4000), 
	PASSWORD VARCHAR(4000), 
	ADDRESS VARCHAR(4000), 
	CONTACT VARCHAR(4000), 
	 CONSTRAINT FEE_ACCOUNTANT_PK PRIMARY KEY (ID) ENABLE
   )

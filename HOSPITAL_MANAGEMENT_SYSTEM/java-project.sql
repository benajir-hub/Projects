CREATE TABLE DOCTOR
(
DNAME VARCHAR2(20) NOT NULL,DID VARCHAR2(20) NOT NULL,DSEX VARCHAR2(20) NOT NULL,DHIRE_DATE DATE NOT NULL,DSALARY NUMBER(10),DADDRESS VARCHAR2(20),DCONTACT VARCHAR2(20),CONSTRAINT DOC_DID_PK PRIMARY KEY(DID)
);



CREATE TABLE NURSE
(
NNAME VARCHAR2(20) NOT NULL,NID VARCHAR2(20) NOT NULL,NSEX VARCHAR2(20) NOT NULL,NHIRE_DATE DATE NOT NULL,NSALARY NUMBER(10),NADDRESS VARCHAR2(20),NCONTACT VARCHAR2(20),CONSTRAINT DOC_NID_PK PRIMARY KEY(NID)
);



CREATE TABLE STUFF
(
SNAME VARCHAR2(20) NOT NULL,SID VARCHAR2(20) NOT NULL,SSEX VARCHAR2(20) NOT NULL,SHIRE_DATE DATE NOT NULL,SSALARY NUMBER(10),SADDRESS VARCHAR2(20),CONSTRAINT DOC_SID_PK PRIMARY KEY(SID)
);




CREATE TABLE ROOM
(
RID VARCHAR2 (20) NOT NULL,RRENT NUMBER(20),CONSTRAINTS RID_PK PRIMARY KEY (RID)
);



CREATE TABLE PATIENT
(
  PNAME VARCHAR2(20),PID VARCHAR2(20) NOT NULL, PSEX VARCHAR2(20), ADMIT_DATE DATE NOT NULL,PDETAILS VARCHAR2(20),PADDRESS VARCHAR2(20),PCONTACT VARCHAR2(20), RID VARCHAR2(20),
 CONSTRAINT PAT_PK PRIMARY KEY(PID),CONSTRAINT RID_FK FOREIGN KEY(RID) REFERENCES ROOM(RID)
);

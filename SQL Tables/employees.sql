--------------------------------------------------------
--  File created - Sal�-Kas�m-12-2019   
--------------------------------------------------------
--------------------------------------------------------
--  DDL for Table EMPLOYEES
--------------------------------------------------------

  CREATE TABLE "HR"."EMPLOYEES" 
   (	"EMPLOYEE_ID" NUMBER(6,0), 
	"FIRST_NAME" VARCHAR2(20 BYTE), 
	"LAST_NAME" VARCHAR2(25 BYTE), 
	"EMAIL" VARCHAR2(25 BYTE), 
	"PHONE_NUMBER" VARCHAR2(20 BYTE), 
	"HIRE_DATE" DATE, 
	"JOB_ID" VARCHAR2(15 BYTE), 
	"SALARY" NUMBER(8,2), 
	"COMMISSION_PCT" NUMBER(2,2), 
	"MANAGER_ID" NUMBER(6,0), 
	"DEPARTMENT_ID" NUMBER(4,0)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;

   COMMENT ON COLUMN "HR"."EMPLOYEES"."EMPLOYEE_ID" IS 'Primary key of employees table.';
   COMMENT ON COLUMN "HR"."EMPLOYEES"."FIRST_NAME" IS 'First name of the employee. A not null column.';
   COMMENT ON COLUMN "HR"."EMPLOYEES"."LAST_NAME" IS 'Last name of the employee. A not null column.';
   COMMENT ON COLUMN "HR"."EMPLOYEES"."EMAIL" IS 'Email id of the employee';
   COMMENT ON COLUMN "HR"."EMPLOYEES"."PHONE_NUMBER" IS 'Phone number of the employee; includes country code and area code';
   COMMENT ON COLUMN "HR"."EMPLOYEES"."HIRE_DATE" IS 'Date when the employee started on this job. A not null column.';
   COMMENT ON COLUMN "HR"."EMPLOYEES"."JOB_ID" IS 'Current job of the employee; foreign key to job_id column of the
jobs table. A not null column.';
   COMMENT ON COLUMN "HR"."EMPLOYEES"."SALARY" IS 'Monthly salary of the employee. Must be greater
than zero (enforced by constraint emp_salary_min)';
   COMMENT ON COLUMN "HR"."EMPLOYEES"."COMMISSION_PCT" IS 'Commission percentage of the employee; Only employees in sales
department elgible for commission percentage';
   COMMENT ON COLUMN "HR"."EMPLOYEES"."MANAGER_ID" IS 'Manager id of the employee; has same domain as manager_id in
departments table. Foreign key to employee_id column of employees table.
(useful for reflexive joins and CONNECT BY query)';
   COMMENT ON COLUMN "HR"."EMPLOYEES"."DEPARTMENT_ID" IS 'Department id where employee works; foreign key to department_id
column of the departments table';
   COMMENT ON TABLE "HR"."EMPLOYEES"  IS 'employees table. Contains 107 rows. References with departments,
jobs, job_history tables. Contains a self reference.';
REM INSERTING into HR.EMPLOYEES
SET DEFINE OFF;
Insert into HR.EMPLOYEES (EMPLOYEE_ID,FIRST_NAME,LAST_NAME,EMAIL,PHONE_NUMBER,HIRE_DATE,JOB_ID,SALARY,COMMISSION_PCT,MANAGER_ID,DEPARTMENT_ID) values ('100','Steven','King','SKING','515.123.4567',to_date('17/06/2003','DD/MM/RRRR'),'AD_PRES','75322,27',null,null,'90');
Insert into HR.EMPLOYEES (EMPLOYEE_ID,FIRST_NAME,LAST_NAME,EMAIL,PHONE_NUMBER,HIRE_DATE,JOB_ID,SALARY,COMMISSION_PCT,MANAGER_ID,DEPARTMENT_ID) values ('101','Neena','Kochhar','NKOCHHAR','515.123.4568',to_date('21/09/2005','DD/MM/RRRR'),'AD_VP','17100','0','100','90');
Insert into HR.EMPLOYEES (EMPLOYEE_ID,FIRST_NAME,LAST_NAME,EMAIL,PHONE_NUMBER,HIRE_DATE,JOB_ID,SALARY,COMMISSION_PCT,MANAGER_ID,DEPARTMENT_ID) values ('102','Lex','De Haann','LDEHAAN','515.123.4569',null,'AD_VP','17000','0','100','10');
Insert into HR.EMPLOYEES (EMPLOYEE_ID,FIRST_NAME,LAST_NAME,EMAIL,PHONE_NUMBER,HIRE_DATE,JOB_ID,SALARY,COMMISSION_PCT,MANAGER_ID,DEPARTMENT_ID) values ('103','Alexander','Hunold','AHUNOLD','590.423.4567',to_date('03/01/2006','DD/MM/RRRR'),'IT_PROG','9000',null,'102','60');
Insert into HR.EMPLOYEES (EMPLOYEE_ID,FIRST_NAME,LAST_NAME,EMAIL,PHONE_NUMBER,HIRE_DATE,JOB_ID,SALARY,COMMISSION_PCT,MANAGER_ID,DEPARTMENT_ID) values ('104','Bruce','Ernst','BERNST','590.423.4568',to_date('21/05/2007','DD/MM/RRRR'),'IT_PROG','6000',null,'103','60');
Insert into HR.EMPLOYEES (EMPLOYEE_ID,FIRST_NAME,LAST_NAME,EMAIL,PHONE_NUMBER,HIRE_DATE,JOB_ID,SALARY,COMMISSION_PCT,MANAGER_ID,DEPARTMENT_ID) values ('105','David','Austin','DAUSTIN','590.423.4569',to_date('25/06/2005','DD/MM/RRRR'),'IT_PROG','5000','0,3','103','60');
Insert into HR.EMPLOYEES (EMPLOYEE_ID,FIRST_NAME,LAST_NAME,EMAIL,PHONE_NUMBER,HIRE_DATE,JOB_ID,SALARY,COMMISSION_PCT,MANAGER_ID,DEPARTMENT_ID) values ('106','Valli','Pataballa','VPATABAL','590.423.4560',to_date('05/02/2006','DD/MM/RRRR'),'IT_PROG','4800',null,'103','60');
Insert into HR.EMPLOYEES (EMPLOYEE_ID,FIRST_NAME,LAST_NAME,EMAIL,PHONE_NUMBER,HIRE_DATE,JOB_ID,SALARY,COMMISSION_PCT,MANAGER_ID,DEPARTMENT_ID) values ('107','Diana','Lorentz','DLORENTZ','590.423.5567',to_date('07/02/2007','DD/MM/RRRR'),'IT_PROG','4200',null,'103','60');
Insert into HR.EMPLOYEES (EMPLOYEE_ID,FIRST_NAME,LAST_NAME,EMAIL,PHONE_NUMBER,HIRE_DATE,JOB_ID,SALARY,COMMISSION_PCT,MANAGER_ID,DEPARTMENT_ID) values ('108','alicee','harika','NGREENBE','515.124.4569',to_date('17/08/2002','DD/MM/RRRR'),'FI_MGR','12007','0,2','101','100');
Insert into HR.EMPLOYEES (EMPLOYEE_ID,FIRST_NAME,LAST_NAME,EMAIL,PHONE_NUMBER,HIRE_DATE,JOB_ID,SALARY,COMMISSION_PCT,MANAGER_ID,DEPARTMENT_ID) values ('111','alice','aaaa','ISCIARRA','515.124.4369',to_date('30/09/2005','DD/MM/RRRR'),'FI_ACCOUNT','7710','0','108','100');
Insert into HR.EMPLOYEES (EMPLOYEE_ID,FIRST_NAME,LAST_NAME,EMAIL,PHONE_NUMBER,HIRE_DATE,JOB_ID,SALARY,COMMISSION_PCT,MANAGER_ID,DEPARTMENT_ID) values ('112','Jose Manuel','Urman','JMURMAN','515.124.4469',to_date('10/10/2006','DD/MM/RRRR'),'FI_ACCOUNT','7800','0,3','108','100');
Insert into HR.EMPLOYEES (EMPLOYEE_ID,FIRST_NAME,LAST_NAME,EMAIL,PHONE_NUMBER,HIRE_DATE,JOB_ID,SALARY,COMMISSION_PCT,MANAGER_ID,DEPARTMENT_ID) values ('113','Luis','Popp','LPOPP','515.124.4567',to_date('07/12/2008','DD/MM/RRRR'),'AC_ACCOUNT','7000','0','108','100');
Insert into HR.EMPLOYEES (EMPLOYEE_ID,FIRST_NAME,LAST_NAME,EMAIL,PHONE_NUMBER,HIRE_DATE,JOB_ID,SALARY,COMMISSION_PCT,MANAGER_ID,DEPARTMENT_ID) values ('114','DenX','Raphaely','DRAPHEAL','515.127.4561',to_date('07/12/2002','DD/MM/RRRR'),'PU_MAN','11000','0','100',null);
Insert into HR.EMPLOYEES (EMPLOYEE_ID,FIRST_NAME,LAST_NAME,EMAIL,PHONE_NUMBER,HIRE_DATE,JOB_ID,SALARY,COMMISSION_PCT,MANAGER_ID,DEPARTMENT_ID) values ('115','Alexander','Khoo','AKHOO','515.127.4562',to_date('18/05/2003','DD/MM/RRRR'),'PU_CLERK','3100',null,'114',null);
Insert into HR.EMPLOYEES (EMPLOYEE_ID,FIRST_NAME,LAST_NAME,EMAIL,PHONE_NUMBER,HIRE_DATE,JOB_ID,SALARY,COMMISSION_PCT,MANAGER_ID,DEPARTMENT_ID) values ('116','Shelli','Baida','SBAIDA','515.127.4563',to_date('24/12/2005','DD/MM/RRRR'),'PU_CLERK','2900',null,'114',null);
Insert into HR.EMPLOYEES (EMPLOYEE_ID,FIRST_NAME,LAST_NAME,EMAIL,PHONE_NUMBER,HIRE_DATE,JOB_ID,SALARY,COMMISSION_PCT,MANAGER_ID,DEPARTMENT_ID) values ('117','Sigal','Tobias','STOBIAS','515.127.4564',to_date('24/07/2005','DD/MM/RRRR'),'PU_CLERK','2800',null,'114',null);
Insert into HR.EMPLOYEES (EMPLOYEE_ID,FIRST_NAME,LAST_NAME,EMAIL,PHONE_NUMBER,HIRE_DATE,JOB_ID,SALARY,COMMISSION_PCT,MANAGER_ID,DEPARTMENT_ID) values ('118','Guy','Himuro','GHIMURO','515.127.4565',to_date('15/11/2006','DD/MM/RRRR'),'PU_CLERK','2600',null,'114',null);
Insert into HR.EMPLOYEES (EMPLOYEE_ID,FIRST_NAME,LAST_NAME,EMAIL,PHONE_NUMBER,HIRE_DATE,JOB_ID,SALARY,COMMISSION_PCT,MANAGER_ID,DEPARTMENT_ID) values ('119','Karen','Colmenares','KCOLMENA','515.127.4566',to_date('10/08/2007','DD/MM/RRRR'),'PU_CLERK','2500',null,'114',null);
Insert into HR.EMPLOYEES (EMPLOYEE_ID,FIRST_NAME,LAST_NAME,EMAIL,PHONE_NUMBER,HIRE_DATE,JOB_ID,SALARY,COMMISSION_PCT,MANAGER_ID,DEPARTMENT_ID) values ('120','Matthew','Weiss','MWEISS','650.123.1234',to_date('18/07/2004','DD/MM/RRRR'),'ST_MAN','8000',null,'100','50');
Insert into HR.EMPLOYEES (EMPLOYEE_ID,FIRST_NAME,LAST_NAME,EMAIL,PHONE_NUMBER,HIRE_DATE,JOB_ID,SALARY,COMMISSION_PCT,MANAGER_ID,DEPARTMENT_ID) values ('121','Adam','Fripp','AFRIPP','650.123.2234',to_date('10/04/2005','DD/MM/RRRR'),'ST_MAN','8200',null,'100','50');
Insert into HR.EMPLOYEES (EMPLOYEE_ID,FIRST_NAME,LAST_NAME,EMAIL,PHONE_NUMBER,HIRE_DATE,JOB_ID,SALARY,COMMISSION_PCT,MANAGER_ID,DEPARTMENT_ID) values ('122','Payam','Kaufling','PKAUFLIN','650.123.3234',to_date('01/05/2003','DD/MM/RRRR'),'ST_MAN','7900',null,'100','50');
Insert into HR.EMPLOYEES (EMPLOYEE_ID,FIRST_NAME,LAST_NAME,EMAIL,PHONE_NUMBER,HIRE_DATE,JOB_ID,SALARY,COMMISSION_PCT,MANAGER_ID,DEPARTMENT_ID) values ('123','Shanta','Vollman','SVOLLMAN','650.123.4234',to_date('10/10/2005','DD/MM/RRRR'),'ST_MAN','6500',null,'100','50');
Insert into HR.EMPLOYEES (EMPLOYEE_ID,FIRST_NAME,LAST_NAME,EMAIL,PHONE_NUMBER,HIRE_DATE,JOB_ID,SALARY,COMMISSION_PCT,MANAGER_ID,DEPARTMENT_ID) values ('124','Kevin','Mourgos','KMOURGOS','650.123.5234',to_date('16/11/2007','DD/MM/RRRR'),'ST_MAN','5800',null,'100','50');
Insert into HR.EMPLOYEES (EMPLOYEE_ID,FIRST_NAME,LAST_NAME,EMAIL,PHONE_NUMBER,HIRE_DATE,JOB_ID,SALARY,COMMISSION_PCT,MANAGER_ID,DEPARTMENT_ID) values ('125','Julia','Nayer','JNAYER','650.124.1214',to_date('16/07/2005','DD/MM/RRRR'),'ST_CLERK','3210','0','120','50');
Insert into HR.EMPLOYEES (EMPLOYEE_ID,FIRST_NAME,LAST_NAME,EMAIL,PHONE_NUMBER,HIRE_DATE,JOB_ID,SALARY,COMMISSION_PCT,MANAGER_ID,DEPARTMENT_ID) values ('126','Irene','Mikkilineni','IMIKKILI','650.124.1224',to_date('28/09/2006','DD/MM/RRRR'),'ST_CLERK','2700',null,'120','50');
Insert into HR.EMPLOYEES (EMPLOYEE_ID,FIRST_NAME,LAST_NAME,EMAIL,PHONE_NUMBER,HIRE_DATE,JOB_ID,SALARY,COMMISSION_PCT,MANAGER_ID,DEPARTMENT_ID) values ('127','James','Landry','JLANDRY','650.124.1334',to_date('14/01/2007','DD/MM/RRRR'),'ST_CLERK','2400',null,'120','50');
Insert into HR.EMPLOYEES (EMPLOYEE_ID,FIRST_NAME,LAST_NAME,EMAIL,PHONE_NUMBER,HIRE_DATE,JOB_ID,SALARY,COMMISSION_PCT,MANAGER_ID,DEPARTMENT_ID) values ('128','Steven','Markle','SMARKLE','650.124.1434',to_date('08/03/2008','DD/MM/RRRR'),'ST_CLERK','2200',null,'120','50');
Insert into HR.EMPLOYEES (EMPLOYEE_ID,FIRST_NAME,LAST_NAME,EMAIL,PHONE_NUMBER,HIRE_DATE,JOB_ID,SALARY,COMMISSION_PCT,MANAGER_ID,DEPARTMENT_ID) values ('129','Laura','Bissot','LBISSOT','650.124.5234',to_date('20/08/2005','DD/MM/RRRR'),'ST_CLERK','3300',null,'121','50');
Insert into HR.EMPLOYEES (EMPLOYEE_ID,FIRST_NAME,LAST_NAME,EMAIL,PHONE_NUMBER,HIRE_DATE,JOB_ID,SALARY,COMMISSION_PCT,MANAGER_ID,DEPARTMENT_ID) values ('130','Mozhe','Atkinson','MATKINSO','650.124.6234',to_date('30/10/2005','DD/MM/RRRR'),'ST_CLERK','2800',null,'121','50');
Insert into HR.EMPLOYEES (EMPLOYEE_ID,FIRST_NAME,LAST_NAME,EMAIL,PHONE_NUMBER,HIRE_DATE,JOB_ID,SALARY,COMMISSION_PCT,MANAGER_ID,DEPARTMENT_ID) values ('131','Alper','Marlow','JAMRLOW','650.124.7234',to_date('16/02/2005','DD/MM/RRRR'),'AA','2500','0','121','50');
Insert into HR.EMPLOYEES (EMPLOYEE_ID,FIRST_NAME,LAST_NAME,EMAIL,PHONE_NUMBER,HIRE_DATE,JOB_ID,SALARY,COMMISSION_PCT,MANAGER_ID,DEPARTMENT_ID) values ('132','TJ','Olson','TJOLSON','650.124.8234',to_date('10/04/2007','DD/MM/RRRR'),'ST_CLERK','2110','0','121','50');
Insert into HR.EMPLOYEES (EMPLOYEE_ID,FIRST_NAME,LAST_NAME,EMAIL,PHONE_NUMBER,HIRE_DATE,JOB_ID,SALARY,COMMISSION_PCT,MANAGER_ID,DEPARTMENT_ID) values ('133','Jason','Mallin','JMALLIN','650.127.1934',to_date('14/06/2004','DD/MM/RRRR'),'ST_CLERK','3300',null,'122','50');
Insert into HR.EMPLOYEES (EMPLOYEE_ID,FIRST_NAME,LAST_NAME,EMAIL,PHONE_NUMBER,HIRE_DATE,JOB_ID,SALARY,COMMISSION_PCT,MANAGER_ID,DEPARTMENT_ID) values ('134','Michael','Rogers','MROGERS','650.127.1834',to_date('26/08/2006','DD/MM/RRRR'),'ST_CLERK','2900',null,'122','50');
Insert into HR.EMPLOYEES (EMPLOYEE_ID,FIRST_NAME,LAST_NAME,EMAIL,PHONE_NUMBER,HIRE_DATE,JOB_ID,SALARY,COMMISSION_PCT,MANAGER_ID,DEPARTMENT_ID) values ('135','Ki','Gee','KGEE','650.127.1734',to_date('12/12/2007','DD/MM/RRRR'),'ST_CLERK','2400',null,'122','50');
Insert into HR.EMPLOYEES (EMPLOYEE_ID,FIRST_NAME,LAST_NAME,EMAIL,PHONE_NUMBER,HIRE_DATE,JOB_ID,SALARY,COMMISSION_PCT,MANAGER_ID,DEPARTMENT_ID) values ('136','Hazel','Philtanker','HPHILTAN','650.127.1634',to_date('06/02/2008','DD/MM/RRRR'),'ST_CLERK','2200',null,'122','50');
Insert into HR.EMPLOYEES (EMPLOYEE_ID,FIRST_NAME,LAST_NAME,EMAIL,PHONE_NUMBER,HIRE_DATE,JOB_ID,SALARY,COMMISSION_PCT,MANAGER_ID,DEPARTMENT_ID) values ('137','Renske','Ladwig','RLADWIG','650.121.1234',to_date('14/07/2003','DD/MM/RRRR'),'ST_CLERK','3600',null,'123','50');
Insert into HR.EMPLOYEES (EMPLOYEE_ID,FIRST_NAME,LAST_NAME,EMAIL,PHONE_NUMBER,HIRE_DATE,JOB_ID,SALARY,COMMISSION_PCT,MANAGER_ID,DEPARTMENT_ID) values ('138','Stephen','Stiles','SSTILES','650.121.2034',to_date('26/10/2005','DD/MM/RRRR'),'ST_CLERK','3200',null,'123','50');
Insert into HR.EMPLOYEES (EMPLOYEE_ID,FIRST_NAME,LAST_NAME,EMAIL,PHONE_NUMBER,HIRE_DATE,JOB_ID,SALARY,COMMISSION_PCT,MANAGER_ID,DEPARTMENT_ID) values ('139','John','Seo','JSEO','650.121.2019',to_date('12/02/2006','DD/MM/RRRR'),'ST_CLERK','2700',null,'123','50');
Insert into HR.EMPLOYEES (EMPLOYEE_ID,FIRST_NAME,LAST_NAME,EMAIL,PHONE_NUMBER,HIRE_DATE,JOB_ID,SALARY,COMMISSION_PCT,MANAGER_ID,DEPARTMENT_ID) values ('140','Joshua','Patel','JPATEL','650.121.1834',to_date('06/04/2006','DD/MM/RRRR'),'ST_CLERK','2500',null,'123','50');
Insert into HR.EMPLOYEES (EMPLOYEE_ID,FIRST_NAME,LAST_NAME,EMAIL,PHONE_NUMBER,HIRE_DATE,JOB_ID,SALARY,COMMISSION_PCT,MANAGER_ID,DEPARTMENT_ID) values ('141','Trenna','Rajs','TRAJS','650.121.8009',to_date('17/10/2003','DD/MM/RRRR'),'ST_CLERK','3500',null,'124','50');
Insert into HR.EMPLOYEES (EMPLOYEE_ID,FIRST_NAME,LAST_NAME,EMAIL,PHONE_NUMBER,HIRE_DATE,JOB_ID,SALARY,COMMISSION_PCT,MANAGER_ID,DEPARTMENT_ID) values ('142','Curtis','Davies','CDAVIES','650.121.2994',to_date('29/01/2005','DD/MM/RRRR'),'ST_CLERK','3100',null,'124','50');
Insert into HR.EMPLOYEES (EMPLOYEE_ID,FIRST_NAME,LAST_NAME,EMAIL,PHONE_NUMBER,HIRE_DATE,JOB_ID,SALARY,COMMISSION_PCT,MANAGER_ID,DEPARTMENT_ID) values ('143','Randall','Matos','RMATOS','650.121.2874',to_date('15/03/2006','DD/MM/RRRR'),'ST_CLERK','2600',null,'124','50');
Insert into HR.EMPLOYEES (EMPLOYEE_ID,FIRST_NAME,LAST_NAME,EMAIL,PHONE_NUMBER,HIRE_DATE,JOB_ID,SALARY,COMMISSION_PCT,MANAGER_ID,DEPARTMENT_ID) values ('144','Peter','Vargas','PVARGAS','650.121.2004',to_date('09/07/2006','DD/MM/RRRR'),'ST_CLERK','2500',null,'124','50');
Insert into HR.EMPLOYEES (EMPLOYEE_ID,FIRST_NAME,LAST_NAME,EMAIL,PHONE_NUMBER,HIRE_DATE,JOB_ID,SALARY,COMMISSION_PCT,MANAGER_ID,DEPARTMENT_ID) values ('145','John','Russell','JRUSSEL','011.44.1344.429268',to_date('01/10/2004','DD/MM/RRRR'),'SA_MAN','14000','0,4','100','80');
Insert into HR.EMPLOYEES (EMPLOYEE_ID,FIRST_NAME,LAST_NAME,EMAIL,PHONE_NUMBER,HIRE_DATE,JOB_ID,SALARY,COMMISSION_PCT,MANAGER_ID,DEPARTMENT_ID) values ('146','Karen','Partners','KPARTNER','011.44.1344.467268',to_date('05/01/2005','DD/MM/RRRR'),'SA_MAN','13500','0,3','100','80');
Insert into HR.EMPLOYEES (EMPLOYEE_ID,FIRST_NAME,LAST_NAME,EMAIL,PHONE_NUMBER,HIRE_DATE,JOB_ID,SALARY,COMMISSION_PCT,MANAGER_ID,DEPARTMENT_ID) values ('147','Alberto','Errazuriz','AERRAZUR','011.44.1344.429278',to_date('10/03/2005','DD/MM/RRRR'),'SA_MAN','12000','0,3','100','80');
Insert into HR.EMPLOYEES (EMPLOYEE_ID,FIRST_NAME,LAST_NAME,EMAIL,PHONE_NUMBER,HIRE_DATE,JOB_ID,SALARY,COMMISSION_PCT,MANAGER_ID,DEPARTMENT_ID) values ('148','Gerald','Cambrault','GCAMBRAU','011.44.1344.619268',to_date('15/10/2007','DD/MM/RRRR'),'SA_MAN','11000','0,3','100','80');
Insert into HR.EMPLOYEES (EMPLOYEE_ID,FIRST_NAME,LAST_NAME,EMAIL,PHONE_NUMBER,HIRE_DATE,JOB_ID,SALARY,COMMISSION_PCT,MANAGER_ID,DEPARTMENT_ID) values ('149','Eleni','Zlotkey','EZLOTKEY','011.44.1344.429018',to_date('29/01/2008','DD/MM/RRRR'),'SA_MAN','10500','0,2','100','80');
Insert into HR.EMPLOYEES (EMPLOYEE_ID,FIRST_NAME,LAST_NAME,EMAIL,PHONE_NUMBER,HIRE_DATE,JOB_ID,SALARY,COMMISSION_PCT,MANAGER_ID,DEPARTMENT_ID) values ('150','Peter','Tucker','PTUCKER','011.44.1344.129268',to_date('30/01/2005','DD/MM/RRRR'),'SA_REP','10000','0,3','145','80');
Insert into HR.EMPLOYEES (EMPLOYEE_ID,FIRST_NAME,LAST_NAME,EMAIL,PHONE_NUMBER,HIRE_DATE,JOB_ID,SALARY,COMMISSION_PCT,MANAGER_ID,DEPARTMENT_ID) values ('151','David','Bernstein','DBERNSTE','011.44.1344.345268',to_date('24/03/2005','DD/MM/RRRR'),'SA_REP','9510','0,25','145','80');
Insert into HR.EMPLOYEES (EMPLOYEE_ID,FIRST_NAME,LAST_NAME,EMAIL,PHONE_NUMBER,HIRE_DATE,JOB_ID,SALARY,COMMISSION_PCT,MANAGER_ID,DEPARTMENT_ID) values ('152','Peter','Hall','PHALL','011.44.1344.478968',to_date('20/08/2005','DD/MM/RRRR'),'SA_REP','9000','0,25','145','80');
Insert into HR.EMPLOYEES (EMPLOYEE_ID,FIRST_NAME,LAST_NAME,EMAIL,PHONE_NUMBER,HIRE_DATE,JOB_ID,SALARY,COMMISSION_PCT,MANAGER_ID,DEPARTMENT_ID) values ('153','Christopher','Olsen','COLSEN','011.44.1344.498718',to_date('30/03/2006','DD/MM/RRRR'),'SA_REP','8000','0,2','145','80');
Insert into HR.EMPLOYEES (EMPLOYEE_ID,FIRST_NAME,LAST_NAME,EMAIL,PHONE_NUMBER,HIRE_DATE,JOB_ID,SALARY,COMMISSION_PCT,MANAGER_ID,DEPARTMENT_ID) values ('154','Nanette','Cambrault','NCAMBRAU','011.44.1344.987668',to_date('09/12/2006','DD/MM/RRRR'),'SA_REP','7500','0,2','145','80');
Insert into HR.EMPLOYEES (EMPLOYEE_ID,FIRST_NAME,LAST_NAME,EMAIL,PHONE_NUMBER,HIRE_DATE,JOB_ID,SALARY,COMMISSION_PCT,MANAGER_ID,DEPARTMENT_ID) values ('155','Oliver','Tuvault','OTUVAULT','011.44.1344.486508',to_date('23/11/2007','DD/MM/RRRR'),'SA_REP','7000','0,15','145','80');
Insert into HR.EMPLOYEES (EMPLOYEE_ID,FIRST_NAME,LAST_NAME,EMAIL,PHONE_NUMBER,HIRE_DATE,JOB_ID,SALARY,COMMISSION_PCT,MANAGER_ID,DEPARTMENT_ID) values ('156','Janette','King','JKING','011.44.1345.429268',to_date('30/01/2004','DD/MM/RRRR'),'SA_REP','10000','0,35','146','80');
Insert into HR.EMPLOYEES (EMPLOYEE_ID,FIRST_NAME,LAST_NAME,EMAIL,PHONE_NUMBER,HIRE_DATE,JOB_ID,SALARY,COMMISSION_PCT,MANAGER_ID,DEPARTMENT_ID) values ('157','Patrick','Sully','PSULLY','011.44.1345.929268',to_date('04/03/2004','DD/MM/RRRR'),'SA_REP','9500','0,35','146','80');
Insert into HR.EMPLOYEES (EMPLOYEE_ID,FIRST_NAME,LAST_NAME,EMAIL,PHONE_NUMBER,HIRE_DATE,JOB_ID,SALARY,COMMISSION_PCT,MANAGER_ID,DEPARTMENT_ID) values ('158','Allan','McEwen','AMCEWEN','011.44.1345.829268',to_date('01/08/2004','DD/MM/RRRR'),'SA_REP','9000','0,35','146','80');
Insert into HR.EMPLOYEES (EMPLOYEE_ID,FIRST_NAME,LAST_NAME,EMAIL,PHONE_NUMBER,HIRE_DATE,JOB_ID,SALARY,COMMISSION_PCT,MANAGER_ID,DEPARTMENT_ID) values ('159','Lindsey','Smith','LSMITH','011.44.1345.729268',to_date('10/03/2005','DD/MM/RRRR'),'SA_REP','8000','0,3','146','80');
Insert into HR.EMPLOYEES (EMPLOYEE_ID,FIRST_NAME,LAST_NAME,EMAIL,PHONE_NUMBER,HIRE_DATE,JOB_ID,SALARY,COMMISSION_PCT,MANAGER_ID,DEPARTMENT_ID) values ('160','Louise','Doran','LDORAN','011.44.1345.629268',to_date('15/12/2005','DD/MM/RRRR'),'SA_REP','7500','0,3','146','80');
Insert into HR.EMPLOYEES (EMPLOYEE_ID,FIRST_NAME,LAST_NAME,EMAIL,PHONE_NUMBER,HIRE_DATE,JOB_ID,SALARY,COMMISSION_PCT,MANAGER_ID,DEPARTMENT_ID) values ('161','Sarath','Sewall','SSEWALL','011.44.1345.529268',to_date('03/11/2006','DD/MM/RRRR'),'SA_REP','7000','0,25','146','80');
Insert into HR.EMPLOYEES (EMPLOYEE_ID,FIRST_NAME,LAST_NAME,EMAIL,PHONE_NUMBER,HIRE_DATE,JOB_ID,SALARY,COMMISSION_PCT,MANAGER_ID,DEPARTMENT_ID) values ('162','Clara','Vishney','CVISHNEY','011.44.1346.129268',to_date('11/11/2005','DD/MM/RRRR'),'SA_REP','10500','0,25','147','80');
Insert into HR.EMPLOYEES (EMPLOYEE_ID,FIRST_NAME,LAST_NAME,EMAIL,PHONE_NUMBER,HIRE_DATE,JOB_ID,SALARY,COMMISSION_PCT,MANAGER_ID,DEPARTMENT_ID) values ('163','Danielle','Greene','DGREENE','011.44.1346.229268',to_date('19/03/2007','DD/MM/RRRR'),'SA_REP','9500','0,15','147','80');
Insert into HR.EMPLOYEES (EMPLOYEE_ID,FIRST_NAME,LAST_NAME,EMAIL,PHONE_NUMBER,HIRE_DATE,JOB_ID,SALARY,COMMISSION_PCT,MANAGER_ID,DEPARTMENT_ID) values ('164','Mattea','Marvins','MMARVINS','011.44.1346.329268',to_date('24/01/2008','DD/MM/RRRR'),'SA_REP','7200','0,1','147','80');
Insert into HR.EMPLOYEES (EMPLOYEE_ID,FIRST_NAME,LAST_NAME,EMAIL,PHONE_NUMBER,HIRE_DATE,JOB_ID,SALARY,COMMISSION_PCT,MANAGER_ID,DEPARTMENT_ID) values ('165','David','Lee','DLEE','011.44.1346.529268',to_date('23/02/2008','DD/MM/RRRR'),'SA_REP','6800','0,1','147','80');
Insert into HR.EMPLOYEES (EMPLOYEE_ID,FIRST_NAME,LAST_NAME,EMAIL,PHONE_NUMBER,HIRE_DATE,JOB_ID,SALARY,COMMISSION_PCT,MANAGER_ID,DEPARTMENT_ID) values ('166','Sundar','Ande','SANDE','011.44.1346.629268',to_date('24/03/2008','DD/MM/RRRR'),'SA_REP','6400','0,1','147','80');
Insert into HR.EMPLOYEES (EMPLOYEE_ID,FIRST_NAME,LAST_NAME,EMAIL,PHONE_NUMBER,HIRE_DATE,JOB_ID,SALARY,COMMISSION_PCT,MANAGER_ID,DEPARTMENT_ID) values ('167','Amit','Banda','ABANDA','011.44.1346.729268',to_date('21/04/2008','DD/MM/RRRR'),'SA_REP','6200','0,1','147','80');
Insert into HR.EMPLOYEES (EMPLOYEE_ID,FIRST_NAME,LAST_NAME,EMAIL,PHONE_NUMBER,HIRE_DATE,JOB_ID,SALARY,COMMISSION_PCT,MANAGER_ID,DEPARTMENT_ID) values ('168','Lisa','Ozer','LOZER','011.44.1343.929268',to_date('11/03/2005','DD/MM/RRRR'),'SA_REP','11500','0,25','148','80');
Insert into HR.EMPLOYEES (EMPLOYEE_ID,FIRST_NAME,LAST_NAME,EMAIL,PHONE_NUMBER,HIRE_DATE,JOB_ID,SALARY,COMMISSION_PCT,MANAGER_ID,DEPARTMENT_ID) values ('169','Harrison','Bloom','HBLOOM','011.44.1343.829268',to_date('23/03/2006','DD/MM/RRRR'),'SA_REP','10000','0,2','148','80');
Insert into HR.EMPLOYEES (EMPLOYEE_ID,FIRST_NAME,LAST_NAME,EMAIL,PHONE_NUMBER,HIRE_DATE,JOB_ID,SALARY,COMMISSION_PCT,MANAGER_ID,DEPARTMENT_ID) values ('170','Tayler','Fox','TFOX','011.44.1343.729268',to_date('24/01/2006','DD/MM/RRRR'),'SA_REP','9600','0,2','148','80');
Insert into HR.EMPLOYEES (EMPLOYEE_ID,FIRST_NAME,LAST_NAME,EMAIL,PHONE_NUMBER,HIRE_DATE,JOB_ID,SALARY,COMMISSION_PCT,MANAGER_ID,DEPARTMENT_ID) values ('171','William','Smith','WSMITH','011.44.1343.629268',to_date('23/02/2007','DD/MM/RRRR'),'SA_REP','7400','0,15','148','80');
Insert into HR.EMPLOYEES (EMPLOYEE_ID,FIRST_NAME,LAST_NAME,EMAIL,PHONE_NUMBER,HIRE_DATE,JOB_ID,SALARY,COMMISSION_PCT,MANAGER_ID,DEPARTMENT_ID) values ('172','Elizabeth','Bates','EBATES','011.44.1343.529268',to_date('24/03/2007','DD/MM/RRRR'),'SA_REP','7300','0,15','148','80');
Insert into HR.EMPLOYEES (EMPLOYEE_ID,FIRST_NAME,LAST_NAME,EMAIL,PHONE_NUMBER,HIRE_DATE,JOB_ID,SALARY,COMMISSION_PCT,MANAGER_ID,DEPARTMENT_ID) values ('173','Sundita','Kumar','SKUMAR','011.44.1343.329268',to_date('21/04/2008','DD/MM/RRRR'),'SA_REP','6100','0,1','148','80');
Insert into HR.EMPLOYEES (EMPLOYEE_ID,FIRST_NAME,LAST_NAME,EMAIL,PHONE_NUMBER,HIRE_DATE,JOB_ID,SALARY,COMMISSION_PCT,MANAGER_ID,DEPARTMENT_ID) values ('174','Ellen','Abel','EABEL','011.44.1644.429267',to_date('11/05/2004','DD/MM/RRRR'),'SA_REP','11000','0,3','149','80');
Insert into HR.EMPLOYEES (EMPLOYEE_ID,FIRST_NAME,LAST_NAME,EMAIL,PHONE_NUMBER,HIRE_DATE,JOB_ID,SALARY,COMMISSION_PCT,MANAGER_ID,DEPARTMENT_ID) values ('175','Alyssa','Hutton','AHUTTON','011.44.1644.429266',to_date('19/03/2005','DD/MM/RRRR'),'SA_REP','8800','0,25','149','80');
Insert into HR.EMPLOYEES (EMPLOYEE_ID,FIRST_NAME,LAST_NAME,EMAIL,PHONE_NUMBER,HIRE_DATE,JOB_ID,SALARY,COMMISSION_PCT,MANAGER_ID,DEPARTMENT_ID) values ('176','Jonathon','Taylor','JTAYLOR','011.44.1644.429265',to_date('24/03/2006','DD/MM/RRRR'),'SA_REP','8600','0,2','149','80');
Insert into HR.EMPLOYEES (EMPLOYEE_ID,FIRST_NAME,LAST_NAME,EMAIL,PHONE_NUMBER,HIRE_DATE,JOB_ID,SALARY,COMMISSION_PCT,MANAGER_ID,DEPARTMENT_ID) values ('177','Jack','Livingston','JLIVINGS','011.44.1644.429264',to_date('23/04/2006','DD/MM/RRRR'),'SA_REP','8400','0,2','149','80');
Insert into HR.EMPLOYEES (EMPLOYEE_ID,FIRST_NAME,LAST_NAME,EMAIL,PHONE_NUMBER,HIRE_DATE,JOB_ID,SALARY,COMMISSION_PCT,MANAGER_ID,DEPARTMENT_ID) values ('178','Kimberely','Grant','KGRANT','011.44.1644.429263',to_date('24/05/2007','DD/MM/RRRR'),'SA_REP','7000','0,15','149',null);
Insert into HR.EMPLOYEES (EMPLOYEE_ID,FIRST_NAME,LAST_NAME,EMAIL,PHONE_NUMBER,HIRE_DATE,JOB_ID,SALARY,COMMISSION_PCT,MANAGER_ID,DEPARTMENT_ID) values ('179','Charles','Johnson','CJOHNSON','011.44.1644.429262',to_date('04/01/2008','DD/MM/RRRR'),'SA_REP','6200','0,1','149','80');
Insert into HR.EMPLOYEES (EMPLOYEE_ID,FIRST_NAME,LAST_NAME,EMAIL,PHONE_NUMBER,HIRE_DATE,JOB_ID,SALARY,COMMISSION_PCT,MANAGER_ID,DEPARTMENT_ID) values ('180','Winston','Taylor','WTAYLOR','650.507.9876',to_date('24/01/2006','DD/MM/RRRR'),'SH_CLERK','3200',null,'120','50');
Insert into HR.EMPLOYEES (EMPLOYEE_ID,FIRST_NAME,LAST_NAME,EMAIL,PHONE_NUMBER,HIRE_DATE,JOB_ID,SALARY,COMMISSION_PCT,MANAGER_ID,DEPARTMENT_ID) values ('181','Jean','Fleaur','JFLEAUR','650.507.9877',to_date('23/02/2006','DD/MM/RRRR'),'SH_CLERK','3100',null,'120','50');
Insert into HR.EMPLOYEES (EMPLOYEE_ID,FIRST_NAME,LAST_NAME,EMAIL,PHONE_NUMBER,HIRE_DATE,JOB_ID,SALARY,COMMISSION_PCT,MANAGER_ID,DEPARTMENT_ID) values ('182','Martha','Sullivan','MSULLIVA','650.507.9878',to_date('21/06/2007','DD/MM/RRRR'),'SH_CLERK','2500',null,'120','50');
Insert into HR.EMPLOYEES (EMPLOYEE_ID,FIRST_NAME,LAST_NAME,EMAIL,PHONE_NUMBER,HIRE_DATE,JOB_ID,SALARY,COMMISSION_PCT,MANAGER_ID,DEPARTMENT_ID) values ('183','Girard','Geoni','GGEONI','650.507.9879',to_date('03/02/2008','DD/MM/RRRR'),'SH_CLERK','2800',null,'120','50');
Insert into HR.EMPLOYEES (EMPLOYEE_ID,FIRST_NAME,LAST_NAME,EMAIL,PHONE_NUMBER,HIRE_DATE,JOB_ID,SALARY,COMMISSION_PCT,MANAGER_ID,DEPARTMENT_ID) values ('184','Nandita','Sarchand','NSARCHAN','650.509.1876',to_date('27/01/2004','DD/MM/RRRR'),'SH_CLERK','4200',null,'121','50');
Insert into HR.EMPLOYEES (EMPLOYEE_ID,FIRST_NAME,LAST_NAME,EMAIL,PHONE_NUMBER,HIRE_DATE,JOB_ID,SALARY,COMMISSION_PCT,MANAGER_ID,DEPARTMENT_ID) values ('185','Alexis','Bull','ABULL','650.509.2876',to_date('20/02/2005','DD/MM/RRRR'),'SH_CLERK','4100',null,'121','50');
Insert into HR.EMPLOYEES (EMPLOYEE_ID,FIRST_NAME,LAST_NAME,EMAIL,PHONE_NUMBER,HIRE_DATE,JOB_ID,SALARY,COMMISSION_PCT,MANAGER_ID,DEPARTMENT_ID) values ('186','Julia','Dellinger','JDELLING','650.509.3876',to_date('24/06/2006','DD/MM/RRRR'),'SH_CLERK','3400',null,'121','50');
Insert into HR.EMPLOYEES (EMPLOYEE_ID,FIRST_NAME,LAST_NAME,EMAIL,PHONE_NUMBER,HIRE_DATE,JOB_ID,SALARY,COMMISSION_PCT,MANAGER_ID,DEPARTMENT_ID) values ('187','Anthony','Cabrio','ACABRIO','650.509.4876',to_date('07/02/2007','DD/MM/RRRR'),'SH_CLERK','3000',null,'121','50');
Insert into HR.EMPLOYEES (EMPLOYEE_ID,FIRST_NAME,LAST_NAME,EMAIL,PHONE_NUMBER,HIRE_DATE,JOB_ID,SALARY,COMMISSION_PCT,MANAGER_ID,DEPARTMENT_ID) values ('188','Kelly','Chung','KCHUNG','650.505.1876',to_date('14/06/2005','DD/MM/RRRR'),'SH_CLERK','3800',null,'122','50');
Insert into HR.EMPLOYEES (EMPLOYEE_ID,FIRST_NAME,LAST_NAME,EMAIL,PHONE_NUMBER,HIRE_DATE,JOB_ID,SALARY,COMMISSION_PCT,MANAGER_ID,DEPARTMENT_ID) values ('189','Jennifer','Dilly','JDILLY','650.505.2876',to_date('13/08/2005','DD/MM/RRRR'),'SH_CLERK','3600',null,'122','50');
Insert into HR.EMPLOYEES (EMPLOYEE_ID,FIRST_NAME,LAST_NAME,EMAIL,PHONE_NUMBER,HIRE_DATE,JOB_ID,SALARY,COMMISSION_PCT,MANAGER_ID,DEPARTMENT_ID) values ('190','Timothy','Gates','TGATES','650.505.3876',to_date('11/07/2006','DD/MM/RRRR'),'SH_CLERK','2900',null,'122','50');
Insert into HR.EMPLOYEES (EMPLOYEE_ID,FIRST_NAME,LAST_NAME,EMAIL,PHONE_NUMBER,HIRE_DATE,JOB_ID,SALARY,COMMISSION_PCT,MANAGER_ID,DEPARTMENT_ID) values ('191','Randall','Perkins','RPERKINS','650.505.4876',to_date('19/12/2007','DD/MM/RRRR'),'SH_CLERK','2500',null,'122','50');
Insert into HR.EMPLOYEES (EMPLOYEE_ID,FIRST_NAME,LAST_NAME,EMAIL,PHONE_NUMBER,HIRE_DATE,JOB_ID,SALARY,COMMISSION_PCT,MANAGER_ID,DEPARTMENT_ID) values ('192','Sarah','Bell','SBELL','650.501.1876',to_date('04/02/2004','DD/MM/RRRR'),'SH_CLERK','4000',null,'123','50');
Insert into HR.EMPLOYEES (EMPLOYEE_ID,FIRST_NAME,LAST_NAME,EMAIL,PHONE_NUMBER,HIRE_DATE,JOB_ID,SALARY,COMMISSION_PCT,MANAGER_ID,DEPARTMENT_ID) values ('193','Britney','Everett','BEVERETT','650.501.2876',to_date('03/03/2005','DD/MM/RRRR'),'SH_CLERK','3900',null,'123','50');
Insert into HR.EMPLOYEES (EMPLOYEE_ID,FIRST_NAME,LAST_NAME,EMAIL,PHONE_NUMBER,HIRE_DATE,JOB_ID,SALARY,COMMISSION_PCT,MANAGER_ID,DEPARTMENT_ID) values ('194','Samuel','McCain','SMCCAIN','650.501.3876',to_date('01/07/2006','DD/MM/RRRR'),'SH_CLERK','3200',null,'123','50');
Insert into HR.EMPLOYEES (EMPLOYEE_ID,FIRST_NAME,LAST_NAME,EMAIL,PHONE_NUMBER,HIRE_DATE,JOB_ID,SALARY,COMMISSION_PCT,MANAGER_ID,DEPARTMENT_ID) values ('195','Vance','Jones','VJONES','650.501.4876',to_date('17/03/2007','DD/MM/RRRR'),'SH_CLERK','2800',null,'123','50');
Insert into HR.EMPLOYEES (EMPLOYEE_ID,FIRST_NAME,LAST_NAME,EMAIL,PHONE_NUMBER,HIRE_DATE,JOB_ID,SALARY,COMMISSION_PCT,MANAGER_ID,DEPARTMENT_ID) values ('196','Alana','Walsh','AWALSH','650.507.9811',to_date('24/04/2006','DD/MM/RRRR'),'SH_CLERK','3100',null,'124','50');
Insert into HR.EMPLOYEES (EMPLOYEE_ID,FIRST_NAME,LAST_NAME,EMAIL,PHONE_NUMBER,HIRE_DATE,JOB_ID,SALARY,COMMISSION_PCT,MANAGER_ID,DEPARTMENT_ID) values ('197','Kevin','Feeney','KFEENEY','650.507.9822',to_date('23/05/2006','DD/MM/RRRR'),'SH_CLERK','3000',null,'124','50');
Insert into HR.EMPLOYEES (EMPLOYEE_ID,FIRST_NAME,LAST_NAME,EMAIL,PHONE_NUMBER,HIRE_DATE,JOB_ID,SALARY,COMMISSION_PCT,MANAGER_ID,DEPARTMENT_ID) values ('198','Donald','OConnell','DOCONNEL','650.507.9833',to_date('21/06/2007','DD/MM/RRRR'),'SH_CLERK','2600',null,'124','50');
Insert into HR.EMPLOYEES (EMPLOYEE_ID,FIRST_NAME,LAST_NAME,EMAIL,PHONE_NUMBER,HIRE_DATE,JOB_ID,SALARY,COMMISSION_PCT,MANAGER_ID,DEPARTMENT_ID) values ('199','Douglas','Grant','DGRANT','650.507.9844',to_date('13/01/2008','DD/MM/RRRR'),'SH_CLERK','2600',null,'124','50');
Insert into HR.EMPLOYEES (EMPLOYEE_ID,FIRST_NAME,LAST_NAME,EMAIL,PHONE_NUMBER,HIRE_DATE,JOB_ID,SALARY,COMMISSION_PCT,MANAGER_ID,DEPARTMENT_ID) values ('200','Jennifer','Whalen','JWHALEN','515.123.4444',to_date('17/09/2003','DD/MM/RRRR'),'AD_ASST','4400',null,'101','10');
Insert into HR.EMPLOYEES (EMPLOYEE_ID,FIRST_NAME,LAST_NAME,EMAIL,PHONE_NUMBER,HIRE_DATE,JOB_ID,SALARY,COMMISSION_PCT,MANAGER_ID,DEPARTMENT_ID) values ('201','Michael','Hartstein','MHARTSTE','515.123.5555',to_date('17/02/2004','DD/MM/RRRR'),'MK_MAN','13000',null,'100','20');
Insert into HR.EMPLOYEES (EMPLOYEE_ID,FIRST_NAME,LAST_NAME,EMAIL,PHONE_NUMBER,HIRE_DATE,JOB_ID,SALARY,COMMISSION_PCT,MANAGER_ID,DEPARTMENT_ID) values ('202','Pat','Fay','PFAY','603.123.6666',to_date('17/08/2005','DD/MM/RRRR'),'MK_REP','33359,52',null,'201','20');
Insert into HR.EMPLOYEES (EMPLOYEE_ID,FIRST_NAME,LAST_NAME,EMAIL,PHONE_NUMBER,HIRE_DATE,JOB_ID,SALARY,COMMISSION_PCT,MANAGER_ID,DEPARTMENT_ID) values ('203','Susan','Mavris','SMAVRIS','515.123.7777',to_date('07/06/2002','DD/MM/RRRR'),'HR_REP','6500',null,'101','40');
Insert into HR.EMPLOYEES (EMPLOYEE_ID,FIRST_NAME,LAST_NAME,EMAIL,PHONE_NUMBER,HIRE_DATE,JOB_ID,SALARY,COMMISSION_PCT,MANAGER_ID,DEPARTMENT_ID) values ('204','Hermann','Baer','HBAER','515.123.8888',to_date('07/06/2002','DD/MM/RRRR'),null,'10000',null,'101','70');
Insert into HR.EMPLOYEES (EMPLOYEE_ID,FIRST_NAME,LAST_NAME,EMAIL,PHONE_NUMBER,HIRE_DATE,JOB_ID,SALARY,COMMISSION_PCT,MANAGER_ID,DEPARTMENT_ID) values ('205','Shelley','Higgins','SHIGGINS','515.123.8080',to_date('07/06/2002','DD/MM/RRRR'),'AC_MGR','12008',null,'101','110');
Insert into HR.EMPLOYEES (EMPLOYEE_ID,FIRST_NAME,LAST_NAME,EMAIL,PHONE_NUMBER,HIRE_DATE,JOB_ID,SALARY,COMMISSION_PCT,MANAGER_ID,DEPARTMENT_ID) values ('206','Bengisu','�zmelle�','bengsu@gmail','123456789',to_date('02/10/2019','DD/MM/RRRR'),'AD_VP','5000','0,3','108','50');
Insert into HR.EMPLOYEES (EMPLOYEE_ID,FIRST_NAME,LAST_NAME,EMAIL,PHONE_NUMBER,HIRE_DATE,JOB_ID,SALARY,COMMISSION_PCT,MANAGER_ID,DEPARTMENT_ID) values ('207','alper','ersayin','alpersersay','1246598',to_date('10/10/2012','DD/MM/RRRR'),'AA','5000','0,1','141','60');
--------------------------------------------------------
--  DDL for Index EMP_EMAIL_UK
--------------------------------------------------------

  CREATE UNIQUE INDEX "HR"."EMP_EMAIL_UK" ON "HR"."EMPLOYEES" ("EMAIL") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index EMP_EMP_ID_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "HR"."EMP_EMP_ID_PK" ON "HR"."EMPLOYEES" ("EMPLOYEE_ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index EMP_DEPARTMENT_IX
--------------------------------------------------------

  CREATE INDEX "HR"."EMP_DEPARTMENT_IX" ON "HR"."EMPLOYEES" ("DEPARTMENT_ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index EMP_JOB_IX
--------------------------------------------------------

  CREATE INDEX "HR"."EMP_JOB_IX" ON "HR"."EMPLOYEES" ("JOB_ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index EMP_MANAGER_IX
--------------------------------------------------------

  CREATE INDEX "HR"."EMP_MANAGER_IX" ON "HR"."EMPLOYEES" ("MANAGER_ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index EMP_NAME_IX
--------------------------------------------------------

  CREATE INDEX "HR"."EMP_NAME_IX" ON "HR"."EMPLOYEES" ("LAST_NAME", "FIRST_NAME") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  Constraints for Table EMPLOYEES
--------------------------------------------------------

  ALTER TABLE "HR"."EMPLOYEES" ADD CONSTRAINT "EMP_EMP_ID_PK" PRIMARY KEY ("EMPLOYEE_ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
  ALTER TABLE "HR"."EMPLOYEES" ADD CONSTRAINT "EMP_EMAIL_UK" UNIQUE ("EMAIL")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
  ALTER TABLE "HR"."EMPLOYEES" ADD CONSTRAINT "EMP_SALARY_MIN" CHECK (salary > 0) ENABLE;
  ALTER TABLE "HR"."EMPLOYEES" MODIFY ("EMAIL" CONSTRAINT "EMP_EMAIL_NN" NOT NULL ENABLE);
  ALTER TABLE "HR"."EMPLOYEES" MODIFY ("LAST_NAME" CONSTRAINT "EMP_LAST_NAME_NN" NOT NULL ENABLE);
--------------------------------------------------------
--  Ref Constraints for Table EMPLOYEES
--------------------------------------------------------

  ALTER TABLE "HR"."EMPLOYEES" ADD CONSTRAINT "EMP_DEPT_FK" FOREIGN KEY ("DEPARTMENT_ID")
	  REFERENCES "HR"."DEPARTMENTS" ("DEPARTMENT_ID") ON DELETE SET NULL ENABLE;
  ALTER TABLE "HR"."EMPLOYEES" ADD CONSTRAINT "EMP_JOB_FK" FOREIGN KEY ("JOB_ID")
	  REFERENCES "HR"."JOBS" ("JOB_ID") ON DELETE SET NULL ENABLE;
  ALTER TABLE "HR"."EMPLOYEES" ADD CONSTRAINT "EMP_MANAGER_FK" FOREIGN KEY ("MANAGER_ID")
	  REFERENCES "HR"."EMPLOYEES" ("EMPLOYEE_ID") ON DELETE SET NULL ENABLE;

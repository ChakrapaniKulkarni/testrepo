CREATE SCHEMA VIRTUAL_SERVICE;

CREATE TABLE VIRTUAL_SERVICE.TB_SERVICES_MASTER (
SERVICE_ID INT NOT NULL PRIMARY KEY,
SERVICE_NAME VARCHAR(50) NOT NULL,
SERVICE_DESCRIPTION VARCHAR(100)
);

CREATE TABLE VIRTUAL_SERVICE.TB_ENVIRONMENTS_MASTER (
ENV_ID INT NOT NULL PRIMARY KEY,
ENV_NAME VARCHAR(50) NOT NULL,
SERVICE_DESCRIPTION VARCHAR(100)
);

CREATE TABLE VIRTUAL_SERVICE.TB_MOCKSERVICE (
ENV_ID INT NOT NULL,
SERVICE_ID INT NOT NULL,
MOCKSERVICE_URL VARCHAR(350) NOT NULL,
DESCRIPTION VARCHAR(200),
ENABLE_MOCK_IN VARCHAR(5) NOT NULL,
CONSTRAINT ENV_FK FOREIGN KEY (ENV_ID) REFERENCES VIRTUAL_SERVICE.TB_ENVIRONMENTS_MASTER(ENV_ID),
CONSTRAINT SER_FK FOREIGN KEY (SERVICE_ID) REFERENCES VIRTUAL_SERVICE.TB_SERVICES_MASTER(SERVICE_ID),
 PRIMARY KEY(ENV_ID,SERVICE_ID)
);

insert into "VIRTUAL_SERVICE"."TB_ENVIRONMENTS_MASTER" ("ENV_ID", "ENV_NAME", "SERVICE_DESCRIPTION") values(1, 'hammer', '');
insert into "VIRTUAL_SERVICE"."TB_ENVIRONMENTS_MASTER" ("ENV_ID", "ENV_NAME", "SERVICE_DESCRIPTION") values(2, 'freezer', 'CIT');
insert into "VIRTUAL_SERVICE"."TB_ENVIRONMENTS_MASTER" ("ENV_ID", "ENV_NAME", "SERVICE_DESCRIPTION") values(3, 'jackhammer', null);
insert into "VIRTUAL_SERVICE"."TB_ENVIRONMENTS_MASTER" ("ENV_ID", "ENV_NAME", "SERVICE_DESCRIPTION") values(4, 'plane', 'UAT');
insert into "VIRTUAL_SERVICE"."TB_ENVIRONMENTS_MASTER" ("ENV_ID", "ENV_NAME", "SERVICE_DESCRIPTION") values(5, 'screwdriver', null);
insert into "VIRTUAL_SERVICE"."TB_ENVIRONMENTS_MASTER" ("ENV_ID", "ENV_NAME", "SERVICE_DESCRIPTION") values(6, 'jimmie', 'PERF');
insert into "VIRTUAL_SERVICE"."TB_ENVIRONMENTS_MASTER" ("ENV_ID", "ENV_NAME", "SERVICE_DESCRIPTION") values(7, 'axe', 'SIT');

insert into "VIRTUAL_SERVICE"."TB_SERVICES_MASTER" ("SERVICE_ID", "SERVICE_NAME", "SERVICE_DESCRIPTION") values(1, 'getActionItems', '');
insert into "VIRTUAL_SERVICE"."TB_SERVICES_MASTER" ("SERVICE_ID", "SERVICE_NAME", "SERVICE_DESCRIPTION") values(2, 'getTeamActionItems', null);
insert into "VIRTUAL_SERVICE"."TB_SERVICES_MASTER" ("SERVICE_ID", "SERVICE_NAME", "SERVICE_DESCRIPTION") values(3, 'getDeptWorkers', null);
insert into "VIRTUAL_SERVICE"."TB_SERVICES_MASTER" ("SERVICE_ID", "SERVICE_NAME", "SERVICE_DESCRIPTION") values(4, 'getAppointments', null);
insert into "VIRTUAL_SERVICE"."TB_SERVICES_MASTER" ("SERVICE_ID", "SERVICE_NAME", "SERVICE_DESCRIPTION") values(5, 'getStoreAssociates', null);
insert into "VIRTUAL_SERVICE"."TB_SERVICES_MASTER" ("SERVICE_ID", "SERVICE_NAME", "SERVICE_DESCRIPTION") values(6, 'getEmails', null);
insert into "VIRTUAL_SERVICE"."dTB_SERVICES_MASTER" ("SERVICE_ID", "SERVICE_NAME", "SERVICE_DESCRIPTION") values(7, 'storeEmails', null);
insert into "VIRTUAL_SERVICE"."TB_SERVICES_MASTER" ("SERVICE_ID", "SERVICE_NAME", "SERVICE_DESCRIPTION") values(8, 'getProjects', null);
insert into "VIRTUAL_SERVICE"."TB_SERVICES_MASTER" ("SERVICE_ID", "SERVICE_NAME", "SERVICE_DESCRIPTION") values(9, 'getCustomerDetails', null);
insert into "VIRTUAL_SERVICE"."TB_SERVICES_MASTER" ("SERVICE_ID", "SERVICE_NAME", "SERVICE_DESCRIPTION") values(10, 'getCustomerSVOC', null);

insert into "VIRTUAL_SERVICE"."TB_MOCKSERVICE" ("ENV_ID", "SERVICE_ID", "MOCKSERVICE_URL", "DESCRIPTION", "ENABLE_MOCK_IN") values(3, 1, 'http://lxjnkprtlprd001:8181/ServiceSimulator/mock/mockservices/actionitemsresponse', null, 'Y');
insert into "VIRTUAL_SERVICE"."TB_MOCKSERVICE" ("ENV_ID", "SERVICE_ID", "MOCKSERVICE_URL", "DESCRIPTION", "ENABLE_MOCK_IN") values(3, 2, 'http://lxjnkprtlprd001:8181/ServiceSimulator/mock/mockservices/teamactionitemsresponse', null, 'Y');
insert into "VIRTUAL_SERVICE"."TB_MOCKSERVICE" ("ENV_ID", "SERVICE_ID", "MOCKSERVICE_URL", "DESCRIPTION", "ENABLE_MOCK_IN") values(3, 3, 'http://lxjnkprtlprd001:8181/ServiceSimulator/mock/mockservices/actionitemsresponse', null, 'Y');
insert into "VIRTUAL_SERVICE"."TB_MOCKSERVICE" ("ENV_ID", "SERVICE_ID", "MOCKSERVICE_URL", "DESCRIPTION", "ENABLE_MOCK_IN") values(3, 4, 'http://lxjnkprtlprd001:8181/ServiceSimulator/mock/mockservices/getapptonpremuserresponse', null, 'Y');
insert into "VIRTUAL_SERVICE"."TB_MOCKSERVICE" ("ENV_ID", "SERVICE_ID", "MOCKSERVICE_URL", "DESCRIPTION", "ENABLE_MOCK_IN") values(3, 5, 'http://lxjnkprtlprd001:8181/ServiceSimulator/mock/mockservices/getstoreassociatesresponse', null, 'Y');
insert into "VIRTUAL_SERVICE"."TB_MOCKSERVICE" ("ENV_ID", "SERVICE_ID", "MOCKSERVICE_URL", "DESCRIPTION", "ENABLE_MOCK_IN") values(3, 6, 'http://lxjnkprtlprd001:8181/ServiceSimulator/mock/mockservices/getEmailsResponse', null, 'Y');
insert into "VIRTUAL_SERVICE"."TB_MOCKSERVICE" ("ENV_ID", "SERVICE_ID", "MOCKSERVICE_URL", "DESCRIPTION", "ENABLE_MOCK_IN") values(3, 7, 'http://lxjnkprtlprd001:8181/ServiceSimulator/mock/mockservices/storeemailsresponse', null, 'Y');
insert into "VIRTUAL_SERVICE"."TB_MOCKSERVICE" ("ENV_ID", "SERVICE_ID", "MOCKSERVICE_URL", "DESCRIPTION", "ENABLE_MOCK_IN") values(3, 8, 'http://lxjnkprtlprd001:8181/ServiceSimulator/mock/mockservices/getprojectdetaislresponse', null, 'Y');
insert into "VIRTUAL_SERVICE"."TB_MOCKSERVICE" ("ENV_ID", "SERVICE_ID", "MOCKSERVICE_URL", "DESCRIPTION", "ENABLE_MOCK_IN") values(3, 9, 'http://lxjnkprtlprd001:8181/ServiceSimulator/mock/mockservices/getcustomerdetailsresponse', null, 'Y');
insert into "VIRTUAL_SERVICE"."TB_MOCKSERVICE" ("ENV_ID", "SERVICE_ID", "MOCKSERVICE_URL", "DESCRIPTION", "ENABLE_MOCK_IN") values(3, 10, 'http://lxjnkprtlprd001:8181/ServiceSimulator/mock/mockservices/getcustomersvocresponse', null, 'Y');


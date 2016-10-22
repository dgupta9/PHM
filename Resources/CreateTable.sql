--Create Queries

create table Users(UserId varchar2(30) not null,FirstName varchar2(30) not null,LastName varchar2(30),Gender varchar2(10),Apartment varchar2(30),Street varchar2(30),City varchar2(30),State varchar2(30),DOB date,isPatient number(1),isHS number(1),isSick number(1),password varchar2(40),zipcode varchar2(20),PRIMARY KEY(UserId);

create table Supports(P_UserId varchar2(30) NOT NULL,HS_UserId varchar2(30) NOT NULL, dateAuthorised date,HStype varchar2(30),PRIMARY KEY(P_UserId, HS_UserId),FOREIGN KEY(P_UserId) REFERENCES Users(UserId),FOREIGN KEY(HS_UserId) REFERENCES Users(UserId));
 
create table Disease(dName varchar2(30) NOT NULL, description varchar2(30),PRIMARY KEY( dName));

create table Duration(fromDate date NOT NULL,toDate date NOT NULL, PRIMARY KEY(fromDate, toDate));

create table Diagnosed(P_UserId varchar2(30) NOT NULL, dName varchar2(30) NOT NULL, fromDate date NOT NULL, toDate date NOT NULL, PRIMARY KEY(P_UserId, dName, fromDate, toDate),FOREIGN KEY(P_UserId) REFERENCES Users(UserId),FOREIGN KEY(dName) REFERENCES Disease(dName),FOREIGN KEY(fromDate, toDate) REFERENCES Duration(fromDate, toDate));

create table observation(HIName varchar2(30) NOT NULL,description varchar2(30),PRIMARY KEY(HIName));

create table GeneralRecommendationWell(HIName varchar2(30) NOT NULL,hasLimit number(1),lowerLimit varchar2(30),upperLimit varchar2(30),freq NUMBER(4),PRIMARY KEY(HIName),FOREIGN KEY(HIName) REFERENCES observation(HIName));

create table GeneralRecommendationSick(dName varchar2(30) NOT NULL,HIName varchar2(30) NOT NULL,hasLimit number(1),lowerLimit varchar2(30),upperLimit varchar2(30),freq number(4),PRIMARY KEY(dName, HIName),FOREIGN KEY(dName) REFERENCES Disease(dName),FOREIGN KEY(HIName) REFERENCES observation(HIName));

create table ObserveRecordTime(observationTime timestamp NOT NULL,recordTime timestamp NOT NULL, PRIMARY KEY(observationTime,recordTime));

create table Reading(P_UserId varchar2(30) NOT NULL,HIName varchar2(30) NOT NULL,observationTime timestamp not null,recordTime timestamp not null,observationValue varchar2(30) NOT NULL,PRIMARY KEY(P_UserId, HIName,observationTime,recordTime),FOREIGN KEY(P_UserId) REFERENCES Users(UserId),FOREIGN KEY(HIName) REFERENCES observation(HIName),FOREIGN KEY(observationTime,recordTime) REFERENCES ObserveRecordTime(observationTime,recordTime));

create table specificRecommendations(P_UserId varchar2(30) NOT NULL, HS_UserId varchar2(30) NOT NULL, HIName varchar2(30) NOT NULL, hasLimit number(1),lowerLimit varchar2(30),upperLimit varchar2(30),freq number(4),PRIMARY KEY(P_UserId, HS_UserId, HIName),FOREIGN KEY(HS_UserId) REFERENCES Users(UserId),FOREIGN KEY(HS_UserId) REFERENCES Users(UserId));

create table Alerts(alertId integer not null, P_UserId varchar2(30) NOT NULL, alertType varchar2(30) NOT NULL, HIName varchar2(30) NOT NULL, message varchar2(50), readStatus number(1), authorisedPersonId varchar2(30) NOT NULL, PRIMARY KEY(alertId));

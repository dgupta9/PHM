-- INSERT QUERIES:

--USERS TABLE:
Insert into Users values('P1', 'Sheldon', 'Cooper','Male','903','2500 Sacramento','Santa Cruz','CA','26-May-1984',1,0,1,'patient1','90021');

Insert into Users values('P2', 'Leonard', 'Hofstader','Male','904','2500 Sacramento','Santa Cruz','CA','19-Apr-1989',1,1,1,'patient2', 90021);

Insert into Users values('P3', 'Penny', 'Hofstader','Female','904','2500 Sacramento','Santa Cruz','CA','25-Dec-1990',1,1,0,'patient3', 90021); 

Insert into Users values('P4', 'Amy', 'Farrahfowler','Female','905','2500 Sacramento','Santa Cruz','CA','15-Jun-1992',1,1,0,'patient4', 90021);

--SUPPORTS TABLE:

Insert into supports values('P1','P2','21-Oct-2016','Primary');

Insert into supports values('P1','P4','21-Oct-2016','Secondary');

Insert into supports values('P2','P3','9-Oct-2016','Primary');

Insert into supports values('P3','P4','21-Oct-2016','Primary');


--DISEASE TABLE:

Insert into disease values('Heart Disease',null);

Insert into disease values('HIV',null);

Insert into disease values('COPD',null);


--DURATION TABLE:
Insert into duration values('21-Oct-2016', systimestamp);

Insert into duration values('9-Oct-2016', systimestamp);


--DIAGNOSED TABLE:



-- OBSERVATION TABLE:

Insert into observation values('Weight',null);

Insert into observation values('Blood Pressure Systolic',null); 

Insert into observation values('Blood Pressure Diastolic',null);

Insert into observation values('Oxygen Saturation',null);

Insert into observation values('Pain',null);

Insert into observation values('Mood',null);

Insert into observation values('Temperature',null);


-- GENERAL RECOMMENDATIONS Well TABLE:

Insert into GeneralRecommendationWell values('Weight','1','120','200','7');

Insert into GeneralRecommendationWell values('Blood Pressure Systolic','0',null,null,null);

Insert into GeneralRecommendationWell values('Blood Pressure Diastolic','0',null,null,null);

Insert into GeneralRecommendationWell values('Oxygen Saturation','0',null,null,null);

Insert into GeneralRecommendationWell values('Pain','0',null,null,null);

Insert into GeneralRecommendationWell values('Mood','0',null,null,null);

Insert into GeneralRecommendationWell values('Temperature','0',null,null,null);


--  GENERAL RECOMMENDATIONS SICK TABLE:


--  FOR HEART DISEASE:

Insert into GeneralRecommendationSick values('Heart Disease','Weight','1','120','200','7');

Insert into GeneralRecommendationSick values('Heart Disease','Blood Pressure Systolic','1','140','159','1');

Insert into GeneralRecommendationSick values('Heart Disease','Blood Pressure Diastolic','1','90','99','1');

Insert into GeneralRecommendationSick values('Heart Disease','Oxygen Saturation','0',null,null,null);

Insert into GeneralRecommendationSick values('Heart Disease','Pain','0',null,null,null);

Insert into GeneralRecommendationSick values('Heart Disease','Mood','0','Happy',null,'7');

Insert into GeneralRecommendationSick values('Heart Disease','Temperature','0',null,null,null);


--	FOR HIV:

Insert into GeneralRecommendationSick values('HIV','Weight','1','120','200','7');

Insert into GeneralRecommendationSick values('HIV','Blood Pressure Systolic','0',null,null,'1');

Insert into GeneralRecommendationSick values('HIV','Blood Pressure Diastolic','0',null,null,'1');

Insert into GeneralRecommendationSick values('HIV','Oxygen Saturation','0',null,null,null);

Insert into GeneralRecommendationSick values('HIV','Pain','0','5',null,'1');

Insert into GeneralRecommendationSick values('HIV','Mood','0',null,null,null);

Insert into GeneralRecommendationSick values('HIV','Temperature','0',null,null,null);


--  FOR COPD:

Insert into GeneralRecommendationSick values('COPD','Weight','0',null,null,null);

Insert into GeneralRecommendationSick values('COPD','Blood Pressure Systolic','0',null,null,null);

Insert into GeneralRecommendationSick values('COPD','Blood Pressure Diastolic','0',null,null,null);

Insert into GeneralRecommendationSick values('COPD','Oxygen Saturation','1','90','99','1');

Insert into GeneralRecommendationSick values('COPD','Pain','0',null,null,null);

Insert into GeneralRecommendationSick values('COPD','Mood','0',null,null,null);

Insert into GeneralRecommendationSick values('COPD','Temperature','1','95','100','1');


-- SPECIFIC RECOMMENDATIONS TABLE:

Insert into specificRecommendations values('P2','P3','Weight','1','120','190','7');

Insert into specificRecommendations values('P2','P3','Pain','0','5',null,'1');


-- OBSERVE-RECORD TABLE:

Insert into ObserveRecordTime values(to_timestamp('10/17/2016 00:00:00','mm/dd/yyyy HH24:MI:SS'),to_timestamp('10/17/2016 00:00:00','mm/dd/yyyy HH24:MI:SS'));

Insert into ObserveRecordTime values(to_timestamp('10/17/2016 00:00:00','mm/dd/yyyy HH24:MI:SS'),to_timestamp('10/17/2016 00:00:00','mm/dd/yyyy HH24:MI:SS'));


-- READINGS TABLE:

Insert into Reading values('P2','Weight',to_timestamp('10/10/2016 00:00:00','mm/dd/yyyy HH24:MI:SS'), to_timestamp('10/11/2016 00:00:00','mm/dd/yyyy HH24:MI:SS'),'180');

Insert into Reading values('P2','Weight',to_timestamp('10/17/2016 00:00:00','mm/dd/yyyy HH24:MI:SS'),to_timestamp('10/17/2016 00:00:00','mm/dd/yyyy HH24:MI:SS'),'195');


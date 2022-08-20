insert into AIRPORT values('LHR1300','Allama Iqbal Airport','Lahore','Airport Road,PhaseVIII','Pakistan',4,30000)
insert into AIRPORT values('KCH1150','Benazir Bhutto Airport','Karachi','Burns Road','Pakistan',5,19000)
insert into AIRPORT values('ISL3210','Edhi International Airport','Islamabad','Airport Road, New Islamabad','Pakistan',6,40000)
insert into AIRPORT values('DEL1300','Gandhi International Airport','New Delhi','Jai Hind Road,New Delhi','India',7,52040)
insert into AIRPORT values('LON2510','Heathrow International Airport','London','Query Road','England',4,80000)

insert into AIRPLANE values('PIA3320',250,'Boeing','Pakistan International Airlines','LHR1300')
insert into AIRPLANE values('PIA620',350,'Jumbo Jet','Pakistan International Airlines','LHR1300')
insert into AIRPLANE values('ETI720',250,'Boeing','Etihad Airways','KCH1150')
insert into AIRPLANE values('EMR1121',550,'Airbus','Emirates Airways','DEL1300')
insert into AIRPLANE values('PIA2310',250,'Airbus','Pakistan International Airlines','ISL3210')
insert into AIRPLANE values('EMR1310',350,'Boeing','Emirates Airways','LHR1300')
insert into AIRPLANE values('EMR2213',250,'Boeing','Emirates Airways','LON2510')

insert into AIRPLANE values('EMR1113',250,'Airbus','Emirates Airways','ISL3210')
insert into AIRPLANE values('ETI1690',250,'Boeing','Etihad Airways','LHR1300')
insert into AIRPLANE values('EMR3213',250,'Boeing','Emirates Airways','LHR1300')


insert into CORPORATION values(13113,'Burj Arab Earnings','Umm Suquiem-3, Dubai',44136267)

insert into CORPORATION values(5131,'Abdur Raheem Holdings','223 Main Street, Bahria Town,Lahore',78236166)
insert into CORPORATION values(55231,'Sterling Estate','13B-Baker Street, London',45502374)


insert into OWNS values('PIA3320',5131)
insert into OWNS values('PIA620',5131)
insert into OWNS values('PIA2310',5131)

insert into OWNS values('ETI720',55231)
insert into OWNS values('ETI1690',55231)

insert into OWNS values('EMR1121',13113)
insert into OWNS values('EMR1310',13113)
insert into OWNS values('EMR2213',13113)
insert into OWNS values('EMR1113',13113)
insert into OWNS values('EMR3213',13113)


insert into SERVICE values('PIA53','2022-05-11',4,'PIA3320')
insert into SERVICE values('PIA54','2022-04-1',8,'PIA3320')
insert into SERVICE values('PIA55','2022-03-21',8,'PIA3320')
insert into SERVICE values('PIA56','2021-12-21',4,'PIA3320')

insert into SERVICE values('PIA83','2022-04-13',2,'PIA620')
insert into SERVICE values('PIA84','2022-04-23',5,'PIA620')
insert into SERVICE values('PIA85','2022-05-13',8,'PIA620')

insert into SERVICE values('PIA103','2021-11-23',2,'PIA2310')
insert into SERVICE values('PIA104','2021-12-3',5,'PIA2310')
insert into SERVICE values('PIA105','2022-01-19',5,'PIA2310')
insert into SERVICE values('PIA106','2022-02-23',8,'PIA2310')
insert into SERVICE values('PIA107','2022-03-29',5,'PIA2310')

insert into SERVICE values('ETI231','2021-10-11',5,'ETI720')
insert into SERVICE values('ETI232','2021-11-30',5,'ETI720')
insert into SERVICE values('ETI233','2022-01-03',8,'ETI720')
insert into SERVICE values('ETI234','2022-02-22',9,'ETI720')
insert into SERVICE values('ETI235','2022-03-01',5,'ETI720')
insert into SERVICE values('ETI236','2022-04-26',5,'ETI720')

insert into SERVICE values('ETI289','2022-04-19',11,'ETI1690')

insert into SERVICE values('EMR155','2021-12-19',3,'EMR1121')
insert into SERVICE values('EMR156','2022-02-28',11,'EMR1121')
insert into SERVICE values('EMR157','2021-04-09',7,'EMR1121')

insert into SERVICE values('EMR37','2022-04-09',9,'EMR1310')
insert into SERVICE values('EMR38','2022-05-09',3,'EMR1310')

insert into SERVICE values('EMR338','2022-05-09',8,'EMR2213')
insert into SERVICE values('EMR339','2022-05-12',8,'EMR2213')

insert into SERVICE values('EMR79','2021-01-23',8,'EMR1113')
insert into SERVICE values('EMR80','2021-02-23',8,'EMR1113')
insert into SERVICE values('EMR81','2021-03-23',4,'EMR1113')
insert into SERVICE values('EMR82','2021-04-23',2,'EMR1113')

insert into SERVICE values('EMR580','2022-04-13',5,'EMR3213')
insert into SERVICE values('EMR581','2022-05-13',5,'EMR3213')

select * from SERVICE

insert into PERSON values(352023372,'Mahad',44737261,'13 Bilkent Street, London')
insert into PERSON values(352028270,'Arthur',44133600,'52 Terry Road, London')
insert into PERSON values(352028869,'Samuel',44993159,'68 Fulham Road, London')
insert into PERSON values(352027193,'Jacob',44773600,'52 Jameson Street, London')
insert into PERSON values(352021152,'Mason',44133600,'292A Jackson Road, London')
insert into PERSON values(352026969,'Ryan',44668804,'252 Apartment-3, London')
insert into PERSON values(352023214,'Jason',44940611,'652 Apartment-32, London')
insert into PERSON values(352029269,'Samiullah',44668804,'252 Apartment-3, London')
insert into PERSON values(352026467,'Rahim',44227931,'89Y Apartment-13, London')

insert into PERSON values(352027424,'Abdur Raheem',44927550,'64 Trafalgar Square, London')
insert into PERSON values(352027816,'Hamza',44258850,'64 MaCkeena Road, London')
insert into PERSON values(352028233,'Natalia',44299516,'88B MaCkeena Road, London')
insert into PERSON values(352027861,'Jarvis',44771801,'624A Chelsea Gardens, London')
insert into PERSON values(352027969,'Austin',44782601,'553A Chesterington, London')



insert into PERSON values(552593025,'Shetty',99351573,'9 Dhalla-83, New Delhi')
insert into PERSON values(552591235,'Sabur',99145963,'34 Dahi Road, New Delhi')
insert into PERSON values(552591732,'Sakur',99258822,'88 Simbula Avenue, New Delhi')
insert into PERSON values(552591884,'Dakeer',99285816,'242 Simbula Street, New Delhi')
insert into PERSON values(552592523,'Pameer',99290052,'67 Prakash Street, New Delhi')
insert into PERSON values(552592956,'Safina',99358570,'92-Samera Avenue, New Delhi')
insert into PERSON values(552593425,'Kabeer',99397633,'234 Apartment-3, New Delhi')
insert into PERSON values(552593695,'Sabahat',99552496,'977 Dhalla-3, New Delhi')
--
insert into PERSON values(552593624,'Gautam',99400681,'13 Mauseeki Moor, New Delhi')
insert into PERSON values(552593774,'Gambhir',99458514,'9 Simbula Avenue, New Delhi')
insert into PERSON values(552593860,'Mahendra',99577914,'226 Prakash Street, New Delhi')
--
insert into PERSON values(36240023,'Saad',03005678,'34G2 Wapda Town, Lahore')
insert into PERSON values(36241324,'Maarij',03001032,'3C Model Town, Lahore')
insert into PERSON values(36241434,'Hassaan',03001442,'151D Model Town, Lahore')
insert into PERSON values(36241990,'Mufeez',03001932,'42E DHA-I, Lahore')
insert into PERSON values(36242034,'Musa',03002032,'75A PCSIR-II, Lahore')
insert into PERSON values(36242543,'Adil',03002235,'3A PCSIR-I, Lahore')
insert into PERSON values(36242576,'Mahreen',03002653,'3A Askari-X, Lahore')
insert into PERSON values(36242843,'Adan',03002993,'75B Askari-X, Lahore')
insert into PERSON values(36242964,'Shayan',03003212,'3W DHA-I, Lahore')
insert into PERSON values(36243125,'Shehryar',03003523,'69E DHA-X, Lahore')
insert into PERSON values(36243278,'Khudayar',03003776,'813F DHA-X, Lahore')
--
insert into PERSON values(36243486,'Irfan',03003856,'8D Model Town, Lahore')
insert into PERSON values(36243551,'Adeen',03003990,'64B2 Bahria Town, Lahore')
insert into PERSON values(36243629,'Kashan',03004113,'77E DHA-I, Lahore')
insert into PERSON values(36243292,'Sohaib',03004514,'81DD DHA-V, Lahore')

--

insert into PERSON values(36243560,'Ahmed',03042356,'24-F2,Islamabad')
insert into PERSON values(36243662,'Mueez',03042681,'343-F1,Islamabad')
insert into PERSON values(36243862,'Muaz',03042843,'632-Apartment3,F2,Islamabad')
insert into PERSON values(36243953,'Saud',03042962,'62-Apartment-5,F1,Islamabad')
insert into PERSON values(36244124,'Shumaila',03043021,'69F F3,Islamabad')
insert into PERSON values(36244342,'Amina',03043213,'553A D2,Islamabad')
--
insert into PERSON values(36244881,'Huzaifa',03043660,'53A Samama Mall,Islamabad')
insert into PERSON values(36245026,'Faizan',03043924,'225D F7,Islamabad')

--

insert into PERSON values(36245023,'Zulfiqar',03045351,'52A, Burns Road, Karachi')
insert into PERSON values(36245143,'Khadija',03045834,'47BA, Burns Road, Karachi')
insert into PERSON values(36245247,'Momina',03046253,'252A, Xavor Road, Karachi')
insert into PERSON values(36245735,'Omer',03047478,'553A Avanceon Road, Karachi')
--
insert into PERSON values(36245930,'Anas',03047938,'63DC Burns Road, Karachi')
insert into PERSON values(36246135,'Alia',03048247,'435D Avanceon Road, Karachi')


--




insert into FLIGHT_CONTROLLER values('LON88823',8,352028270,'LON2510')
insert into FLIGHT_CONTROLLER values('LON89367',2,352021152,'LON2510')
insert into FLIGHT_CONTROLLER values('LON89932',1,352026969,'LON2510')
insert into FLIGHT_CONTROLLER values('LON89982',1,352029269,'LON2510')


insert into FLIGHT_CONTROLLER values('DEL0043',20,552593025,'DEL1300')
insert into FLIGHT_CONTROLLER values('DEL0243',6,552592523,'DEL1300')

insert into FLIGHT_CONTROLLER values('LHR824',8,36241990,'LHR1300')
insert into FLIGHT_CONTROLLER values('LHR803',2,36242843,'LHR1300')
insert into FLIGHT_CONTROLLER values('LHR889',6,36243125,'LHR1300')

insert into FLIGHT_CONTROLLER values('ISL634',3,36243862,'ISL3210')
insert into FLIGHT_CONTROLLER values('ISL234',7,36243953,'ISL3210')

insert into FLIGHT_CONTROLLER values('KCH454',7,36245023,'KCH1150')



insert into SERVICE_STAFF values('LON99353','Chief Engineer','M',352023372)
insert into SERVICE_STAFF values('LON99410','Senior Engineer','M',352028869)
insert into SERVICE_STAFF values('LON99950','Mantainence Engineer','M',352027193)

insert into SERVICE_STAFF values('DEL1425','Chief Engineer','M',552591235)
insert into SERVICE_STAFF values('DEL1455','Junior Engineer','M',552591732)
insert into SERVICE_STAFF values('DEL1755','Senior Engineer','F',552591884)

insert into SERVICE_STAFF values('LHR1043','Chief Engineer','M',36242034)
insert into SERVICE_STAFF values('LHR1178','Automation Engineer','M',36242964)
insert into SERVICE_STAFF values('LHR1073','Management Engineer','F',36242576)
insert into SERVICE_STAFF values('LHR1235','Senior Engineer','M',36242543)


insert into SERVICE_STAFF values('ISL2435','Senior Engineer','F',36244124)
insert into SERVICE_STAFF values('ISL2815','Chief Engineer','F',36244342)


insert into SERVICE_STAFF values('KCH2450','Chief Engineer','M',36245735)


insert into MAINTAINS values(36242543,'PIA53','PIA3320')
insert into MAINTAINS values(36242543,'PIA54','PIA3320')
insert into MAINTAINS values(36242034,'PIA55','PIA3320')
insert into MAINTAINS values(36242543,'PIA56','PIA3320')
insert into MAINTAINS values(36242543,'EMR580','EMR3213')
insert into MAINTAINS values(36242543,'EMR581','EMR3213')
insert into MAINTAINS values(36242034,'EMR37','EMR1310')
insert into MAINTAINS values(36242034,'EMR38','EMR1310')
insert into MAINTAINS values(36242034,'ETI289','ETI1690')
insert into MAINTAINS values(36242034,'PIA83','PIA620')
insert into MAINTAINS values(36242543,'PIA84','PIA620')
insert into MAINTAINS values(36242543,'PIA85','PIA620')


insert into MAINTAINS values(36245735,'ETI231','ETI720')
insert into MAINTAINS values(36245735,'ETI232','ETI720')
insert into MAINTAINS values(36245735,'ETI233','ETI720')
insert into MAINTAINS values(36245735,'ETI234','ETI720')
insert into MAINTAINS values(36245735,'ETI235','ETI720')
insert into MAINTAINS values(36245735,'ETI236','ETI720')


insert into MAINTAINS values(552591732,'EMR155','EMR1121')
insert into MAINTAINS values(552591732,'EMR156','EMR1121')
insert into MAINTAINS values(552591884,'EMR157','EMR1121')


insert into MAINTAINS values(36244342,'PIA103','PIA2310')
insert into MAINTAINS values(36244124,'PIA104','PIA2310')
insert into MAINTAINS values(36244124,'PIA105','PIA2310')
insert into MAINTAINS values(36244342,'PIA106','PIA2310')
insert into MAINTAINS values(36244342,'PIA107','PIA2310')

insert into MAINTAINS values(36244124,'EMR79','EMR1113')
insert into MAINTAINS values(36244124,'EMR80','EMR1113')
insert into MAINTAINS values(36244342,'EMR81','EMR1113')
insert into MAINTAINS values(36244342,'EMR82','EMR1113')



insert into PASSENGER values(552592956,863761649,'London')
insert into PASSENGER values(352023214,866266903,'New Delhi')
insert into PASSENGER values(352029269,851467478,'Lahore')
insert into PASSENGER values(352026467,851467478,'Lahore')
insert into PASSENGER values(552593425,565479425,'Islamabad')
insert into PASSENGER values(552593025,635574146,'Islamabad')
insert into PASSENGER values(36240023,667489425,'Islamabad')
insert into PASSENGER values(36241324,727589725,'Islamabad')
insert into PASSENGER values(36241434,635625059,'London')
insert into PASSENGER values(36243278,727589725,'Karachi')
insert into PASSENGER values(36243560,567889725,'Karachi')
insert into PASSENGER values(36243662,597502623,'Lahore')
insert into PASSENGER values(36243862,645353539,'Karachi')
insert into PASSENGER values(36245143,445690245,'London')
insert into PASSENGER values(36245247,523232751,'Lahore')





insert into FLIGHT values(3320132,'Islamabad','Lahore','2022-03-13 06:30','2022-03-13 8:52',400,'PIA3320')
insert into FLIGHT values(3320162,'Islamabad','Lahore','2022-03-23 8:00','2022-03-23 10:01',400,'PIA3320')
insert into FLIGHT values(3320242,'Karachi','Lahore','2022-04-17 14:00','2022-04-17 17:01',700,'PIA3320')
insert into FLIGHT values(3320491,'Lahore','Karachi','2022-04-29 19:00','2022-04-29 22:31',700,'PIA3320')
insert into FLIGHT values(6202143,'Lahore','Islamabad','2022-03-15 19:00','2022-03-15 21:31',400,'PIA620')
insert into FLIGHT values(6202743,'Karachi','Lahore','2022-03-11 12:00','2022-03-11 14:46',400,'PIA620')
insert into FLIGHT values(6202830,'Islamabad','Karachi','2022-03-26 8:00','2022-03-26 11:46',900,'PIA620')

insert into FLIGHT values(7205135,'London','Karachi','2022-03-26 03:00','2022-03-26 11:46',8620,'ETI720')
insert into FLIGHT values(7205272,'Lahore','London','2022-04-06 03:00','2022-04-06 11:17',8730,'ETI720')
insert into FLIGHT values(7205624,'London','Lahore','2022-04-13 01:00','2022-03-13 09:23',8730,'ETI720')
insert into FLIGHT values(7205829,'Lahore','London','2022-04-29 08:00','2022-04-30 04:23',8730,'ETI720')
insert into FLIGHT values(7205915,'New Delhi','London','2022-05-09 08:00','2022-05-09 06:53',9382,'ETI720')
insert into FLIGHT values(7205923,'Islamabad','London','2022-05-21 22:00','2022-05-22 06:19',8400,'ETI720')

insert into FLIGHT values(1121042,'London','New Delhi','2022-04-20 22:00','2022-05-21 08:59',9382,'EMR1121')
insert into FLIGHT values(1121152,'New Delhi','London','2022-05-13 02:30','2022-05-13 11:39',9382,'EMR1121')

insert into FLIGHT values(2310138,'London','Islamabad','2022-05-3 04:00','2022-05-3 11:39',8400,'PIA2310')
insert into FLIGHT values(2310252,'Islamabad','London','2022-05-27 6:00','2022-05-27 2:14',8400,'PIA2310')
insert into FLIGHT values(2310320,'Islamabad','Lahore','2022-04-7 20:00','2022-04-7 23:14',400,'PIA2310')
insert into FLIGHT values(2310459,'Karachi','Islamabad','2022-04-21 10:00','2022-04-21 13:19',900,'PIA2310')

insert into FLIGHT values(1310511,'London','Lahore','2022-05-01 22:00','2022-05-2 05:19',8730,'EMR1310')
insert into FLIGHT values(1310552,'London','Lahore','2022-05-26 02:00','2022-05-26 08:19',8730,'EMR1310')
insert into FLIGHT values(1310557,'London','Islamabad','2022-05-14 05:00','2022-05-14 01:00',8400,'EMR1310')
insert into FLIGHT values(1310611,'Islamabad','London','2022-04-24 05:00','2022-04-24 01:14',8730,'EMR1310')

insert into FLIGHT values(2213163,'Islamabad','London','2022-05-10 08:00','2022-05-10 16:50',8400,'EMR2213')
insert into FLIGHT values(2213201,'Karachi','London','2022-04-10 20:00','2022-04-11 4:50',8600,'EMR2213')
insert into FLIGHT values(2213357,'Karachi','Islamabad','2022-05-14 08:00','2022-05-14 11:03',900,'EMR2213')
insert into FLIGHT values(2213412,'London','Karachi','2022-05-22 20:00','2022-05-23 3:46',8600,'EMR2213')

insert into FLIGHT values(1113032,'Karachi','London','2022-04-27 11:00','2022-04-27 20:39',8600,'EMR1113')
insert into FLIGHT values(1113137,'Islamabad','Karachi','2022-05-01 22:00','2022-05-02 2:03',900,'EMR1113')
insert into FLIGHT values(1113216,'London','Islamabad','2022-05-09 03:00','2022-05-09 12:03',8400,'EMR1113')
insert into FLIGHT values(1113289,'New Delhi','London','2022-05-19 03:00','2022-05-19 13:11',9382,'EMR1113')
insert into FLIGHT values(1113353,'London','New Delhi','2022-05-29 06:00','2022-05-29 16:36',9382,'EMR1113')

insert into FLIGHT values(1690042,'London','Lahore','2022-04-21 01:00','2022-04-21 16:36',8730,'ETI1690')
insert into FLIGHT values(1690159,'Lahore','London','2022-05-01 05:30','2022-05-01 13:59',8730,'ETI1690')
insert into FLIGHT values(1690242,'Karachi','Lahore','2022-05-9 05:30','2022-05-9 8:59',400,'ETI1690')
insert into FLIGHT values(1690311,'London','Karachi','2022-05-14 06:00','2022-05-14 14:11',8600,'ETI1690')
insert into FLIGHT values(1690539,'Lahore','London','2022-05-25 07:00','2022-05-25 14:19',8730,'ETI1690')







insert into RESERVES values(552592956,1113353)
insert into RESERVES values(352023214,1121152)
insert into RESERVES values(352029269,1690539)
insert into RESERVES values(352026467,1690539)
insert into RESERVES values(552593425,1113289)
insert into RESERVES values(552593425,2310252)
insert into RESERVES values(552593025,1113289)
insert into RESERVES values(552593025,2310252)
insert into RESERVES values(36240023,2310320)
insert into RESERVES values(36241324,2310320)
insert into RESERVES values(36241434,1310511)
insert into RESERVES values(36243278,1690242)
insert into RESERVES values(36243560,1690242)
insert into RESERVES values(36243662,1690159)
insert into RESERVES values(36243862,1310611)
insert into RESERVES values(36243862,2213357)
insert into RESERVES values(36243862,7205624)
insert into RESERVES values(36245143,2213412)
insert into RESERVES values(36245247,7205135)
insert into RESERVES values(36245247,2310320)



insert into PILOT values('PK0036367',803561538,5,352027424)
insert into PILOT values('PK0168962',804550915,2,352027816)
insert into PILOT values('INT0171031',804552574,4,352028233)
insert into PILOT values('INT0246680',804552624,12,352027861)
insert into PILOT values('INT0258801',804553218,12,352027969)

insert into PILOT values('INT1055281',565470024,1,552593624)
insert into PILOT values('INT1056635',565473114,2,552593774)
insert into PILOT values('INT1059242',565475267,3,552593860)

insert into PILOT values('PK2537790',727662474,8,36243486)
insert into PILOT values('INT2414190',727663521,5,36243551)
insert into PILOT values('INT2661320',727666661,2,36243629)
insert into PILOT values('INT2865137',727669241,11,36243292)

insert into PILOT values('PK3669812',727678697,8,36245930)
insert into PILOT values('PK3689961',727679512,3,36246135)





insert into FLIES values(36243292,1310511)
insert into FLIES values(36243292,7205923)
insert into FLIES values(36243486,3320132)
insert into FLIES values(36243486,2310320)
insert into FLIES values(36243486,3320242)
insert into FLIES values(36243551,6202743)
insert into FLIES values(36243551,7205135)
insert into FLIES values(36243551,1113032)
insert into FLIES values(36243629,7205135)
insert into FLIES values(36243629,7205272)
insert into FLIES values(36245930,6202143)
insert into FLIES values(36245930,3320162)
insert into FLIES values(36245930,6202830)
insert into FLIES values(36245930,2310459)
insert into FLIES values(36245930,1690242)
insert into FLIES values(36246135,3320162)
insert into FLIES values(36246135,3320491)
insert into FLIES values(352027424,2213357)
insert into FLIES values(352027861,2213201)
insert into FLIES values(352027861,1121042)
insert into FLIES values(352027861,1113216)
insert into FLIES values(352027861,2213357)
insert into FLIES values(352027861,2310252)
insert into FLIES values(352027969,7205624)
insert into FLIES values(352027969,1310611)
insert into FLIES values(352027969,2310138)
insert into FLIES values(352027969,1690539)
insert into FLIES values(352028233,1690042)
insert into FLIES values(352028233,2213163)
insert into FLIES values(352028233,2213412)
insert into FLIES values(552593624,7205829)
insert into FLIES values(552593624,7205915)
insert into FLIES values(552593624,1310557)
insert into FLIES values(552593624,1113353)
insert into FLIES values(552593624,2310252)

insert into FLIES values(552593774,1690159)
insert into FLIES values(552593774,1121152)
insert into FLIES values(552593774,1113289)
insert into FLIES values(552593774,1310552)

insert into FLIES values(552593860,1113137)
insert into FLIES values(552593860,1690311)
insert into FLIES values(552593860,2213412)


SELECT * FROM AIRPLANE

SELECT * FROM AIRPORT

SELECT * FROM CORPORATION

SELECT * FROM FLIES

SELECT * FROM FLIGHT

SELECT * FROM FLIGHT_CONTROLLER

SELECT * FROM MAINTAINS
SELECT * FROM OWNS

SELECT * FROM PASSENGER

SELECT * FROM PERSON

SELECT * FROM PILOT

SELECT * FROM RESERVES

SELECT * FROM SERVICE
SELECT *FROM SERVICE_STAFF



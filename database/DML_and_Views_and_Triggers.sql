
--------------------------------------------------------------------------------------------------
--SQL COMMANDS
--------------------------------------------------------------------------------------------------


select * from FLIGHT where "TO"='London' and DEPARTURE_DATETIME between '2022-02-10' and '2022-04-13'



create procedure getFlightDetails_To @To varchar(20)=NULL,@From varchar(20)=NULL,@Departure_Datetime datetime=NULL,@Arrival_Datetime datetime=NULL
as
begin
if(@To is null and @From is Null and @Departure_Datetime is null and @Arrival_Datetime is null)
begin
select * from FLIGHT
end
if(@To is not null and @From is Null and @Departure_Datetime is null and @Arrival_Datetime is null)
begin 
select * from FLIGHT where "To"=@To
end
if(@To is  null and @From is not Null and @Departure_Datetime is null and @Arrival_Datetime is null)
begin 
select * from FLIGHT where "FROM"=@From
end
if(@To is not null and @From is not Null and @Departure_Datetime is null and @Arrival_Datetime is null)
begin 
select * from FLIGHT where "FROM"=@From and "To"=@To
end
if(@To is not null and @From is not Null and @Departure_Datetime is not null and @Arrival_Datetime is not null)
begin 
select * from FLIGHT where "FROM"=@From and "To"=@To and DEPARTURE_DATETIME between  @Departure_Datetime and @Arrival_Datetime
end
end

getFlightDetails_To  @From='Lahore'
getFlightDetails_To  @To='Islamabad'
getFlightDetails_To 'Islamabad','Lahore','2022-03-10','2022-03-17'

create procedure addNewPassenger @CNIC int, @Name varchar(30),@Phone int, @Address varchar(30),@Passport_No int, @Destination varchar(20)
as
begin
insert into PERSON values(@CNIC,@Name,@Phone,@Address)
insert into PASSENGER values(@CNIC,@Passport_No,@Destination)
end

addNewPassenger 352028550,'Rashid',44912659,'44 Madeira Street, London',866000472,'New Delhi'
select * from PASSENGER as pa inner join PERSON as p on p.CNIC=pa.CNIC where Destination='New Delhi'


create procedure Booking_Flight @Flight_No int, @Name varchar(30)
as 
begin
declare @CNIC int
select @CNIC=CNIC from PERSON where "NAME"=@Name
insert into RESERVES values(@CNIC, @Flight_No)

end

Booking_Flight 3320132,'Rashid'

select * from RESERVES as r inner join PERSON as p on p.CNIC=r.CNIC where FLIGHT_NO=3320132

create procedure Current_Passengers @Flight_No int
as
begin
select * from PASSENGER as p inner join RESERVES as r on r.CNIC=p.CNIC where r.FLIGHT_NO=@Flight_No
end

Current_Passengers 1113289



create procedure New_Flight @Flight_No int, @To varchar(20), @From varchar(20),@DeptTime datetime, @ArrvTime datetime,@Distance int, @ID varchar(40),
@Capacity int, @Type varchar(40), @Company varchar(40), @City varchar(15)
as
begin
declare @Code varchar(15)
select @Code=CODE from AIRPORT where CITY=@City

insert into AIRPLANE values(@ID,@Capacity,@Type,@Company,@Code)
insert into FLIGHT values  (@Flight_No,@To,@From,@DeptTime,@ArrvTime,@Distance,@ID)
end


New_Flight 7724501,'Lahore','London','2022-06-01 02:00','2022-06-01 11:55',8730,'EMR6690',10,'Boeing','Emirates Airways','London'


create procedure getFlight_Controller @CNIC int
as
begin
select a.CODE,a.NAME,a.CITY,a.COUNTRY,fc.ID,fc.YEARS_OF_SERVICE,fc.CNIC,p.NAME from AIRPORT as a 
inner join FLIGHT_CONTROLLER as fc on fc.CODE=a.CODE inner join PERSON as p on p.CNIC=fc.CNIC
where fc.CNIC=@CNIC
end

getFlight_Controller 352028270

alter procedure getCorporation_Name @ID varchar(40)
as
begin
declare @Reg_Num int
select @Reg_Num=REG_NUM from OWNS where ID=@ID
select * from CORPORATION where REG_NUM=@Reg_Num
end

getCorporation_Name 'ETI1690'


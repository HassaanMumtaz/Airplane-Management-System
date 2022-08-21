# Airplane-Management-System
Airline Management System is a software based service that provides users with the ability to interact with a system that keeps a record of the  Flights, Passengers, Pilots, Service Staff, Flight Controllers,  available Airports, available Airplanes, and even   the list of  Owners. 
## Why the need?
With the advent of the 21st century and interaction between countries and tourism exponentially increasing interaction between countries as a result flights to and from countries are   exponentially increasing hence providing efficient data integrated solutions with a one-stop shop capable of not only managing Flights but also encapsulating the key interactions inside an Airport can facilitate not only end-users but also Airport staff.

The current solutions airports provide are primarily based on  two-completely different system i.e. one to manage passengers and another to manage  airport staff. This results in redundancy in data that our solution tends to avoid, by creating a networked model capable of storing normalized data. For example, there can be redundancy when both “Sam” is categorized as a Passenger and a Pilot even though he was a Passenger for the Flight from London to Lahore on 21/04/22, and a Pilot for 32 other flights. This results in a mixture of data that can be easily solved by normalizing our table in a single Point of Interest (POI).
The main objective of our system also tends to  provide   the ability to manage in house workers by allotting  Pilots to fly certain Flights ,Flight Controllers to work at a certain Airport, and Service Workers to maintain certain Airplanes.  It also allows us the capability to add new persons to the database, that can be further categorized in Airport Workers or Passengers. Besides this, like generic Flight Management System our System also holds the capability to book Airplanes from one destination to another. 
The website will provide interface to the user through which they can get the end result. The system will also allow the users make their own accounts so that they can register themselves and also can save either operate the system as an Airport worker or look into available flights as a Passenger.
## Design Requirements
The design requirements of the given problem statement were as follows:
#### • To design an Airport Management System with the basic functionalities:
#### 1. Insert new People into the system
    1.  Insert new Pilots
    2.  Insert new Service Workers
    3.  Insert new Passengers
    4.  Insert new Flight Controllers
#### 2. Show new Flights
    1.  Show Passengers on board certain flights
    2.  Show Pilots on board certain flights
#### 3. Allocate Personnel to Airplanes for Maintenance
    1.  Add Service Workers to work on a Plane
#### 4. Add new Airplanes to the System
#### 5. Manage Flight schedules with regards to people.
#### 6.	Manage  Flights with respect to Airplanes.

#### • The database designed should be actively linked to the webpage.
#### • Certain people should have access to change data in the system.

## System Design
To create a necessary design for our database first we had to create  a list of essential necessities using the highlighted  design requirements:

There were a number of assumptions we had to take into account before implementing our EER Diagram:
##### 1. Only a Corporation can be an Owner.
##### 2. A number of Owners can own an Airplane.
##### 3. An Airplane can have a number of flights (One to Many relation).
##### 4. Many Passengers can reserve many seats on a Flight(Many to Many).
##### 5. There are only 4 types of people Passenger,Pilot,Flight Controller, and Service Staff.
##### 6. One Airplane can be served by N number of Service staff. 

Furthermore, we also had to keep in mind the basic crux of how all these entities will interact with each other and drawing relationships(M-N, M-1,1-M) resulted in a more comprehensive database design. 

#### EER Model
![image](https://user-images.githubusercontent.com/53343462/185743920-60752361-0ca3-496c-b3b6-7b9c446cdf87.png)
#### EER to Relational Model Mapping
![image](https://user-images.githubusercontent.com/53343462/185743977-a46274b6-4699-4a17-b866-d5a9345aac12.png)

## Design Implementation
Essentially our systems covers every services that unifies and simplifies the work of either an Airline Booking System or an Airport Staff Management System by doing the following:
#### 1.	Creating a database with help of EER to Relational Mapping. This was done by using the “Forward Engineering” method built in ERWIN.
#### 2.	Using the provided DDL commands to CREATE all the necessary tables.
#### 3.	Creating DML based ALTER commands to update necessary data by using CASCADING updating or deletion.
#### 4.	Creating DML based INSERT commands to run our necessary data into the tables. We then use all the Primary Key and Foreign Key  constraints to make our data  less redundant. Furthermore, the division of data is done so as to not need extensive Normalization.
#### 5.	We move on to implementing STORED PROCEDURES for individual task execution.
    a. getFlightDetails: This allows us to input a certain destination, current location, date of arrival and departure. This allows us to cross examine either all     available flights to a location, all flights from a location, all flights regardless of anything, all flights from  a specific location to a specific destination,and all flights a specific location to a specific destination on a specific day.
    b. addNewPassengers: This allows us to input a new person into the PERSON and PASSENGER tables. 
    c. BookingFlight: This allows us to book a specific flight on a specifc flight number by using the name of the person that is booking this flight. If we book it   properly then our procedure extracts the CNIC of the person who’s name for example is “Rashid” and then inputs the values of Flight Number and CNIC into the RESERVES table.
    d. CurrentPassenger: To get a list of passengers from a specific flight we join both RESERVES and PASSENGERS to get the name of the people on that flight. 
    e. addNewFlight: This allows us to create a new flight using all the data provided, and using it to insert into AIRPLANE and FLIGHT.
    f. getFlightController: To get a list of available flight controllers in the database.
    g. getCorporationName: To get the name of the Corporation that owns the Airplane with that ID.
    h. addNewCorporation: This adds a  new Owner
    i. addNewAirport: This adds a new Airport
    j. addNewAirplane: This adds a new airplane using data from an already available airport.
    k. getServiceStaff: Gets a list of service staff working on a specific plane
    l. getPilot: Gets Pilot data to fly a specific flight.
    m. addNewPilot: Adds a new pilot to the pool of people.
    n. addServiceSchedule: Add a new service for a specific plane and assigns people in that city.
#### 6.	We then implemented our front-end design using React.js that allowed us to configure our services using basic HTML/CSS formatting to create necessary boxes for data visuals and data insertion i.e. if data is imported showing data in tabular format.
#### 7. Next we used Express.js that is a library in the framework of Node.js to configure connections to our SQL Server. This allowed us to use SQL Scripting         embedded in our Node.js to CRUD(Create,Read,Update and Delete) anything.




# Getting Started with Create React App

This project was bootstrapped with [Create React App](https://github.com/facebook/create-react-app).

## Available Scripts

In the project directory, you can run:

### `npm start`

Runs the app in the development mode.\
Open [http://localhost:3000](http://localhost:3000) to view it in your browser.

The page will reload when you make changes.\
You may also see any lint errors in the console.

### `npm test`

Launches the test runner in the interactive watch mode.\
See the section about [running tests](https://facebook.github.io/create-react-app/docs/running-tests) for more information.

### `npm run build`

Builds the app for production to the `build` folder.\
It correctly bundles React in production mode and optimizes the build for the best performance.

The build is minified and the filenames include the hashes.\
Your app is ready to be deployed!

See the section about [deployment](https://facebook.github.io/create-react-app/docs/deployment) for more information.

### `npm run eject`

**Note: this is a one-way operation. Once you `eject`, you can't go back!**

If you aren't satisfied with the build tool and configuration choices, you can `eject` at any time. This command will remove the single build dependency from your project.

Instead, it will copy all the configuration files and the transitive dependencies (webpack, Babel, ESLint, etc) right into your project so you have full control over them. All of the commands except `eject` will still work, but they will point to the copied scripts so you can tweak them. At this point you're on your own.

You don't have to ever use `eject`. The curated feature set is suitable for small and middle deployments, and you shouldn't feel obligated to use this feature. However we understand that this tool wouldn't be useful if you couldn't customize it when you are ready for it.

## Learn More

You can learn more in the [Create React App documentation](https://facebook.github.io/create-react-app/docs/getting-started).

To learn React, check out the [React documentation](https://reactjs.org/).

### Code Splitting

This section has moved here: [https://facebook.github.io/create-react-app/docs/code-splitting](https://facebook.github.io/create-react-app/docs/code-splitting)

### Analyzing the Bundle Size

This section has moved here: [https://facebook.github.io/create-react-app/docs/analyzing-the-bundle-size](https://facebook.github.io/create-react-app/docs/analyzing-the-bundle-size)

### Making a Progressive Web App

This section has moved here: [https://facebook.github.io/create-react-app/docs/making-a-progressive-web-app](https://facebook.github.io/create-react-app/docs/making-a-progressive-web-app)

### Advanced Configuration

This section has moved here: [https://facebook.github.io/create-react-app/docs/advanced-configuration](https://facebook.github.io/create-react-app/docs/advanced-configuration)

### Deployment

This section has moved here: [https://facebook.github.io/create-react-app/docs/deployment](https://facebook.github.io/create-react-app/docs/deployment)

### `npm run build` fails to minify

This section has moved here: [https://facebook.github.io/create-react-app/docs/troubleshooting#npm-run-build-fails-to-minify](https://facebook.github.io/create-react-app/docs/troubleshooting#npm-run-build-fails-to-minify)

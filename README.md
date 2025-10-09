# Databases II - Project

## Exercise 1
Use the script provided in order to create the following database tables: 
 
 
**PILOT**
| COLUMN | TYPE | SIZE | EXPLANATION |
|:---:|:---:|:---:|:---:|
|PILOT_ID|N|3|Pilot ID|
|LAST_NAME|V|20|Last name|
|FIRST_NAME|V|20|First name|
|CITY_ID|N|3|City ID|
|SALARY|N|7,2|Salary|


**CITY**


| COLUMN | TYPE | SIZE | EXPLANATION |
|:---:|:---:|:---:|:---:|
|CITY_ID|N|3|City ID|
|CITY_NAME|V|20|City name|


**PLANE**

| column | type | size | explanation |
|:---:|:---:|:---:|:---:|
|PLA_ID|N|2|Plane ID|
|PLA_DESC|N|3|Plane description|
|MAX_PASSENGER|N|2|Maximum passengers|
|CITY_ID|N|3|City ID|


**FLIGHT**

| COLUMN | TYPE | SIZE | EXPLANATION |
|:---:|:---:|:---:|:---:|
|FLIGHT_ID|N|3|Flight ID|
|PILOT_ID|N|3|Pilot ID|
|PLA_ID|N|2|Plane ID|
|CITY_DEP|N|3|Departure city ID|
|CITY_ARR|N|3|Arrival city ID|
|DEP_DATE|D||Departure date|
|DEP_TIME|N|4|Departure time|
|ARR_TIME|N|4|Arrival time|

## Exercise 2
By using SELECT .. BULK COLLECT .., type a PL/SQL program that displays all planes.

## Exercise 3  
By using a cursor, type a PL/SQL program that displays the (id, description, capacity 
and city name) for all planes located in particular city (city name) and their max 
passenger is greater or equal to a particular number. 

## Exercise 4
Create the stored function **NbOfPlanesPerCity** that accepts the parameter : city 
name and returns the number of planes located in that city. Make sure that the city name can be entered in upper or lower case.

## Exercise 5
Create the stored procedure **ListOfFlights** that accepts the parameter : city 
name (departure city) and displays the list of flights ordered  in ascending 
order of departure time (the columns to display are : flight id, pilot name, 
plane description, departure time, arrival time, arrival city name). Make sure that the city name can be entered in upper or lower case.

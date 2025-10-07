# Databases II - Project

## Exercise 1
Use the script provided in order to create the following database tables: 
 
 
**PILOT**
```
+ -----------------------------------------------------+ 
+     COLUMN   +   TYPE   +   SIZE   +   Explanation   +
+ -----------------------------------------------------+
+    PILOT_ID  +    N     +     3    +     Pilot id    +
+ -----------------------------------------------------+
+   LAST_NAME  +    V     +    20    +     Last name   +
+ -----------------------------------------------------+
+  FIRST_NAME  +    V     +    20    +    First name   +
+ -----------------------------------------------------+
+    CITY_ID   +    N     +     3    +     City id     +
+ -----------------------------------------------------+
+     SALARY   +    N     +    7,2   +     Salary      +
+ -----------------------------------------------------+
```
 
**CITY**
```
+ -----------------------------------------------------+ 
+     COLUMN   +   TYPE   +   SIZE   +   Explanation   +
+ -----------------------------------------------------+
+    CITY_ID   +    N     +     3    +     City id     +
+ -----------------------------------------------------+
+   CITY_NAME  +    V     +    20    +     City name   +
+ -----------------------------------------------------+
```

**PLANE**
``` 
+ ------------------------------------------------------------+ 
+      COLUMN    +   TYPE   +   SIZE   +     Explanation      +
+ ------------------------------------------------------------+
+     PLA_ID     +    N     +     2    +       Plane id       +
+ ------------------------------------------------------------+
+     PLA_DESC   +    N     +     3    +   Plane description  +
+ ------------------------------------------------------------+
+  MAX_PASSENGER +    N     +     2    +  Maximum passengers  +
+ ------------------------------------------------------------+
+     CITY_ID    +    N     +     3    +        City id       +
+ ------------------------------------------------------------+
```

**FLIGHT**
```
+ --------------------------------------------------------+ 
+     COLUMN   +   TYPE   +   SIZE   +    Explanation     +
+ --------------------------------------------------------+
+   FLIGHT_ID  +    N     +     3    +     Flight id      +
+ --------------------------------------------------------+
+   PILOT_ID   +    N     +     3    +      Pilot id      +
+ --------------------------------------------------------+
+    PLA_ID    +    N     +     2    +      Plane id      +
+ --------------------------------------------------------+
+   CITY_DEP   +    N     +     3    +  City id departure +
+ --------------------------------------------------------+
+   CITY_ARR   +    N     +     3    +      Salary        +
+ --------------------------------------------------------+
+   DEP_DATE   +    D     +          +      Salary        +
+ --------------------------------------------------------+
+   DEP_TIME   +    N     +     4    +      Salary        +
+ --------------------------------------------------------+
+   ARR_TIME   +    N     +     4    +    Arrival time    +
+---------------------------------------------------------+
```

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

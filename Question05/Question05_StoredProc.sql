CREATE OR REPLACE PROCEDURE ListOfFlights(
    P_CITY_NAME IN VARCHAR2
)
IS
BEGIN
    DBMS_OUTPUT.PUT_LINE('==============================================================================================================');
    DBMS_OUTPUT.PUT_LINE('FLIGHT ID      PILOT NAME      PLANE DESCRIPTION      DEPARTURE TIME      ARRIVAL TIME      ARRIVAL CITY NAME');
    DBMS_OUTPUT.PUT_LINE('==============================================================================================================');

   FOR flight_rec IN (
      SELECT 
         FLIGHT.FLIGHT_ID,
         (SELECT FIRST_NAME ||' '|| LAST_NAME 
          FROM PILOT 
          WHERE PILOT.PILOT_ID = FLIGHT.PILOT_ID) AS PILOT_NAME,
         (SELECT PLA_DESC 
          FROM PLANE 
          WHERE PLANE.PLA_ID = FLIGHT.PLA_ID) AS PLANE_DESCRIPTION,
         FLIGHT.DEP_TIME AS DEPARTURE_TIME,
         FLIGHT.ARR_TIME AS ARRIVAL_TIME,
         (SELECT CITY_NAME 
          FROM CITY 
          WHERE CITY.CITY_ID = FLIGHT.CITY_ARR) AS ARRIVAL_CITY_NAME
      FROM 
         FLIGHT
      WHERE 
         FLIGHT.CITY_DEP = (SELECT CITY_ID 
                            FROM CITY 
                            WHERE UPPER(CITY_NAME) = UPPER(P_CITY_NAME))
      ORDER BY 
         FLIGHT.DEP_TIME ASC
   )
   LOOP
      DBMS_OUTPUT.PUT_LINE(
         RPAD(flight_rec.FLIGHT_ID,13,' ') ||
         RPAD(flight_rec.PILOT_NAME,23,' ') || 
         RPAD(flight_rec.PLANE_DESCRIPTION,22,' ') || 
         RPAD(flight_rec.DEPARTURE_TIME,18,' ') || 
         RPAD(flight_rec.ARRIVAL_TIME,20,' ') || 
         flight_rec.ARRIVAL_CITY_NAME
      );
   END LOOP;
   
   DBMS_OUTPUT.PUT_LINE('==============================================================================================================');

EXCEPTION
   WHEN OTHERS THEN
      DBMS_OUTPUT.PUT_LINE('ERROR: ' || SQLERRM);
END;
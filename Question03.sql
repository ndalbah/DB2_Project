SET SERVEROUTPUT ON
SET VERIFY OFF

ACCEPT S_CITY_NAME PROMPT 'ENTER THE CITY ID: '
ACCEPT S_MAX_PASSENGER PROMPT 'ENTER MINIMUM CAPACITY: '

DECLARE
   V_PLANE_ID PLANE.PLA_ID%TYPE;
   V_PLANE_DESC PLANE.PLA_DESC%TYPE;
   V_MAX_PASSENGER PLANE.MAX_PASSENGER%TYPE;
   V_CITY_NAME CITY.CITY_NAME%TYPE;


   Cursor c_plane IS SELECT PLANE.PLA_ID, PLANE.PLA_DESC, PLANE.MAX_PASSENGER, CITY.CITY_NAME 
   FROM PLANE, CITY
   WHERE PLANE.CITY_ID = CITY.CITY_ID
   AND UPPER(CITY.CITY_NAME) = UPPER(V_CITY_NAME)
   AND MAX_PASSENGER >= V_MAX_PASSENGER;


BEGIN
   V_MAX_PASSENGER:=&S_MAX_PASSENGER;
   V_CITY_NAME:='&S_CITY_NAME';

   DBMS_OUTPUT.PUT_LINE('=========================================================');
   DBMS_OUTPUT.PUT_LINE('PLANE ID     PLANE DESCRIPTION     CAPACITY     CITY ID');
   DBMS_OUTPUT.PUT_LINE('=========================================================');

   for cur_rec in c_plane LOOP
      DBMS_OUTPUT.PUT_LINE(LPAD(cur_rec.PLA_ID,4,' ') || 
                           LPAD(cur_rec.PLA_DESC, 18, ' ') || 
                           LPAD(cur_rec.MAX_PASSENGER,18,' ') || 
                           LPAD(cur_rec.CITY_NAME,15,' '));
   END LOOP;

   DBMS_OUTPUT.PUT_LINE('=========================================================');

EXCEPTION
   WHEN OTHERS THEN
     DBMS_OUTPUT.PUT_LINE('ERROR: '||SQLERRM);
END;
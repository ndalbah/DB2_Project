SET SERVEROUTPUT ON;
SET VERIFY OFF;

ACCEPT S_CITY_NAME PROMPT 'Enter the City Name: ';

DECLARE
   V_CITY_NAME VARCHAR2(20) := '&S_CITY_NAME';
   V_COUNT NUMBER;
   V_FLAG varchar2(3);
BEGIN
   NbOfPlanesPerCity(V_CITY_NAME, V_COUNT, V_FLAG);

    IF V_FLAG='YES' THEN
        DBMS_OUTPUT.PUT_LINE('==================================');
        DBMS_OUTPUT.PUT_LINE('Number of planes in ' || UPPER(V_CITY_NAME) || ': ' || V_COUNT);
        DBMS_OUTPUT.PUT_LINE('==================================');

   ELSE
        DBMS_OUTPUT.PUT_LINE('There are no planes in the city ' || UPPER(V_CITY_NAME));
   END IF;

EXCEPTION
    WHEN OTHERS THEN
    DBMS_OUTPUT.PUT_LINE(SQLERRM);
END;
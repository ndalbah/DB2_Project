SET SERVEROUTPUT ON
SET VERIFY OFF
DECLARE
    TYPE TPlaneList IS TABLE OF PLANE%ROWTYPE;--TEmpList is a collection of type ROW of EMPLOYEE
    V_PlaneList TPlaneList; 
BEGIN
        SELECT * BULK COLLECT
        INTO V_PlaneList
        FROM PLANE;
        DBMS_OUTPUT.PUT_LINE('================================================================================');
        DBMS_OUTPUT.PUT_LINE('PLANE ID     PLANE DESCRIPTION       MAXIMUM NUMBER OF PASSENGERS       CITY ID');
        DBMS_OUTPUT.PUT_LINE('================================================================================');
        FOR I IN V_PlaneList.FIRST..V_PlaneList.LAST LOOP

            DBMS_OUTPUT.PUT_LINE(RPAD(V_PlaneList(I).PLA_ID,18,' ')
                               ||RPAD(V_PlaneList(I).PLA_DESC,32,' ')
                               ||RPAD(V_PlaneList(I).MAX_PASSENGER,24,' ')
                               ||V_PlaneList(I).CITY_ID);
        END LOOP;
        DBMS_OUTPUT.PUT_LINE('================================================================================');

EXCEPTION WHEN OTHERS THEN
     DBMS_OUTPUT.PUT_LINE('ERROR: '||SQLERRM);
END;
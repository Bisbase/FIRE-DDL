/* -------------------------------------------------------------------------- */
/* Drop all tables in db 
/* File: ClearDB.sql
/* -------------------------------------------------------------------------- */

BEGIN
    FOR c IN (SELECT table_name FROM user_tables) LOOP
        EXECUTE IMMEDIATE ('DROP TABLE "' || c.table_name || '" CASCADE CONSTRAINTS PURGE');
    END LOOP;
END; 

-- DROP TABLE BEREGNING CASCADE CONSTRAINTS PURGE;
-- DROP TABLE BEREGNING_KOORDINAT CASCADE CONSTRAINTS PURGE;
-- DROP TABLE BEREGNING_OBSERVATION CASCADE CONSTRAINTS PURGE;
-- DROP TABLE CONV_PUNKT CASCADE CONSTRAINTS PURGE;
-- DROP TABLE EVENTTYPE CASCADE CONSTRAINTS PURGE;
-- DROP TABLE GEOMETRIOBJEKT CASCADE CONSTRAINTS PURGE;
-- DROP TABLE KOORDINAT CASCADE CONSTRAINTS PURGE;
-- DROP TABLE OBSERVATION CASCADE CONSTRAINTS PURGE;
-- DROP TABLE OBSERVATIONTYPE CASCADE CONSTRAINTS PURGE;
-- DROP TABLE OBSERVATIONTYPENAMESPACE CASCADE CONSTRAINTS PURGE;
-- DROP TABLE PUNKT CASCADE CONSTRAINTS PURGE;
-- DROP TABLE PUNKTINFO CASCADE CONSTRAINTS PURGE;
-- DROP TABLE PUNKTINFOTYPE CASCADE CONSTRAINTS PURGE;
-- DROP TABLE PUNKTINFOTYPENAMESPACE CASCADE CONSTRAINTS PURGE;
-- DROP TABLE SAG CASCADE CONSTRAINTS PURGE;
-- DROP TABLE SAGSEVENT CASCADE CONSTRAINTS PURGE;
-- DROP TABLE SAGSEVENTINFO CASCADE CONSTRAINTS PURGE;
-- DROP TABLE SAGSEVENTINFO_MATERIALE CASCADE CONSTRAINTS PURGE;
-- DROP TABLE SAGSEVENTINFO_RAPPORTHTML CASCADE CONSTRAINTS PURGE;
-- DROP TABLE SAGSINFO CASCADE CONSTRAINTS PURGE;
-- DROP TABLE SRIDTTYPE CASCADE CONSTRAINTS PURGE;
-- DROP TABLE SRIDNAMESPACE CASCADE CONSTRAINTS PURGE;

COMMIT;
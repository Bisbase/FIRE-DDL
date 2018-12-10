/* -------------------------------------------------------------------------- */
/* Make PUNKTINFO data (with namespace NET). 
/* File: MakePunktInfoNET.sql   
/* All but NET:jessen is found using the REFGEO.NET table. Jessen punkter is
/* found using table sub_ref and l�benummer (LBN) - see sql below
/* -------------------------------------------------------------------------- */

DELETE FROM PUNKTINFO WHERE INFOTYPE LIKE 'NET:%';
-- SELECT COUNT(*) FROM PUNKTINFO WHERE INFOTYPE LIKE 'NET:%';
-- SELECT INFOTYPE, COUNT(*) FROM PUNKTINFO WHERE INFOTYPE LIKE 'NET:%' GROUP BY INFOTYPE;

-- NET:jessen
INSERT INTO PUNKTINFO (REGISTRERINGFRA, INFOTYPE, SAGSEVENTID, PUNKTID)
SELECT 
    SYSDATE,
    'NET:jessen',
    '15101d43-ac91-4c7c-9e58-c7a0b5367910',
    conv.ID
FROM sub_ref@refgeo net
INNER JOIN CONV_PUNKT conv ON net.REFNR = conv.REFNR
INNER JOIN PUNKT p ON p.ID = conv.ID
WHERE net.LBN >= 81000 AND net.LBN < 82000
;

-- NET:10KM
INSERT INTO PUNKTINFO (REGISTRERINGFRA, INFOTYPE, SAGSEVENTID, PUNKTID)
SELECT 
    SYSDATE,
    'NET:10KM',
    '15101d43-ac91-4c7c-9e58-c7a0b5367910',
    conv.ID
FROM NET@refgeo net
INNER JOIN CONV_PUNKT conv ON net.REFNR = conv.REFNR
INNER JOIN PUNKT p ON p.ID = conv.ID
WHERE net.TIKMNET = 1 
;

-- NET:GPSNET
INSERT INTO PUNKTINFO (REGISTRERINGFRA, INFOTYPE, SAGSEVENTID, PUNKTID)
SELECT 
    SYSDATE,
    'NET:GPSNET',
    '15101d43-ac91-4c7c-9e58-c7a0b5367910',
    conv.ID
FROM NET@refgeo net
INNER JOIN CONV_PUNKT conv ON net.REFNR = conv.REFNR
INNER JOIN PUNKT p ON p.ID = conv.ID
WHERE net.GPSNET = 1 
;

-- NET:REFDK
INSERT INTO PUNKTINFO (REGISTRERINGFRA, INFOTYPE, SAGSEVENTID, PUNKTID)
SELECT 
    SYSDATE,
    'NET:REFDK',
    '15101d43-ac91-4c7c-9e58-c7a0b5367910',
    conv.ID
FROM NET@refgeo net
INNER JOIN CONV_PUNKT conv ON net.REFNR = conv.REFNR
INNER JOIN PUNKT p ON p.ID = conv.ID
WHERE net.REFDK = 1 
;

-- NET:5D
INSERT INTO PUNKTINFO (REGISTRERINGFRA, INFOTYPE, SAGSEVENTID, PUNKTID)
SELECT 
    SYSDATE,
    'NET:5D',
    '15101d43-ac91-4c7c-9e58-c7a0b5367910',
    conv.ID
FROM NET@refgeo net
INNER JOIN CONV_PUNKT conv ON net.REFNR = conv.REFNR
INNER JOIN PUNKT p ON p.ID = conv.ID
WHERE net.NET5D = 1 
;


-- NET:DMI
INSERT INTO PUNKTINFO (REGISTRERINGFRA, INFOTYPE, SAGSEVENTID, PUNKTID)
SELECT 
    SYSDATE,
    'NET:DMI',
    '15101d43-ac91-4c7c-9e58-c7a0b5367910',
    conv.ID
FROM NET@refgeo net
INNER JOIN CONV_PUNKT conv ON net.REFNR = conv.REFNR
INNER JOIN PUNKT p ON p.ID = conv.ID
WHERE net.DMI = 1 
;


-- NET:tyngde
INSERT INTO PUNKTINFO (REGISTRERINGFRA, INFOTYPE, SAGSEVENTID, PUNKTID)
SELECT 
    SYSDATE,
    'NET:tyngde',
    '15101d43-ac91-4c7c-9e58-c7a0b5367910',
    conv.ID
FROM NET@refgeo net
INNER JOIN CONV_PUNKT conv ON net.REFNR = conv.REFNR
INNER JOIN PUNKT p ON p.ID = conv.ID
WHERE net.TYNGDE = 1 
;


-- NET:FO10KM
INSERT INTO PUNKTINFO (REGISTRERINGFRA, INFOTYPE, SAGSEVENTID, PUNKTID)
SELECT 
    SYSDATE,
    'NET:FO10KM',
    '15101d43-ac91-4c7c-9e58-c7a0b5367910',
    conv.ID
FROM NET@refgeo net
INNER JOIN CONV_PUNKT conv ON net.REFNR = conv.REFNR
INNER JOIN PUNKT p ON p.ID = conv.ID
WHERE net.FO10KMNET = 1 
;


-- NET:CORS
INSERT INTO PUNKTINFO (REGISTRERINGFRA, INFOTYPE, SAGSEVENTID, PUNKTID)
SELECT 
    SYSDATE,
    'NET:CORS',
    '15101d43-ac91-4c7c-9e58-c7a0b5367910',
    conv.ID
FROM NET@refgeo net
INNER JOIN CONV_PUNKT conv ON net.REFNR = conv.REFNR
INNER JOIN PUNKT p ON p.ID = conv.ID
WHERE net.CORS = 1 
;


-- NET:EUREFDK
INSERT INTO PUNKTINFO (REGISTRERINGFRA, INFOTYPE, SAGSEVENTID, PUNKTID)
SELECT 
    SYSDATE,
    'NET:EUREFDK',
    '15101d43-ac91-4c7c-9e58-c7a0b5367910',
    conv.ID
FROM NET@refgeo net
INNER JOIN CONV_PUNKT conv ON net.REFNR = conv.REFNR
INNER JOIN PUNKT p ON p.ID = conv.ID
WHERE net.EUREFDK = 1 
;

-- NET:DEFVAND
INSERT INTO PUNKTINFO (REGISTRERINGFRA, INFOTYPE, SAGSEVENTID, PUNKTID)
SELECT 
    SYSDATE,
    'NET:DEFVAND',
    '15101d43-ac91-4c7c-9e58-c7a0b5367910',
    conv.ID
FROM NET@refgeo net
INNER JOIN CONV_PUNKT conv ON net.REFNR = conv.REFNR
INNER JOIN PUNKT p ON p.ID = conv.ID
WHERE net.DEF_VAND = 1 
;

-- NET:REFGR
INSERT INTO PUNKTINFO (REGISTRERINGFRA, INFOTYPE, SAGSEVENTID, PUNKTID)
SELECT 
    SYSDATE,
    'NET:REFGR',
    '15101d43-ac91-4c7c-9e58-c7a0b5367910',
    conv.ID
FROM NET@refgeo net
INNER JOIN CONV_PUNKT conv ON net.REFNR = conv.REFNR
INNER JOIN PUNKT p ON p.ID = conv.ID
WHERE net.REFGR = 1 
;


-- NET:GRAENSEAFM
INSERT INTO PUNKTINFO (REGISTRERINGFRA, INFOTYPE, SAGSEVENTID, PUNKTID)
SELECT 
    SYSDATE,
    'NET:GRAENSEAFM',
    '15101d43-ac91-4c7c-9e58-c7a0b5367910',
    conv.ID
FROM NET@refgeo net
INNER JOIN CONV_PUNKT conv ON net.REFNR = conv.REFNR
INNER JOIN PUNKT p ON p.ID = conv.ID
WHERE net.GRAENSEAFM = 1 
;

COMMIT;


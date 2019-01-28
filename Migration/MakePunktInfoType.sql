﻿/* -------------------------------------------------------------------------- */
/* Make PUNKTINFOTYPE data. 
/* File: MakePunktInfoType.sql   
/* -------------------------------------------------------------------------- */

/*
AFKLARINGER:
Er namespace listen komplet - modellens enum passer ikke med Kristians regneark
Mangler at implementere AFM:højde_over_ATTRIBUT

*/
DELETE FROM PUNKTINFOTYPENAMESPACE;
INSERT INTO PUNKTINFOTYPENAMESPACE (BESKRIVELSE, NAMESPACE) VALUES ('Ingen beskrivelse','AFM');
INSERT INTO PUNKTINFOTYPENAMESPACE (BESKRIVELSE, NAMESPACE) VALUES ('Ingen beskrivelse','ATTR');
INSERT INTO PUNKTINFOTYPENAMESPACE (BESKRIVELSE, NAMESPACE) VALUES ('Ingen beskrivelse','IDENT');
INSERT INTO PUNKTINFOTYPENAMESPACE (BESKRIVELSE, NAMESPACE) VALUES ('Ingen beskrivelse','NET');
INSERT INTO PUNKTINFOTYPENAMESPACE (BESKRIVELSE, NAMESPACE) VALUES ('Ingen beskrivelse','PS');
INSERT INTO PUNKTINFOTYPENAMESPACE (BESKRIVELSE, NAMESPACE) VALUES ('Ingen beskrivelse','REGION');
INSERT INTO PUNKTINFOTYPENAMESPACE (BESKRIVELSE, NAMESPACE) VALUES ('Ingen beskrivelse','SKITSE');

DELETE FROM PUNKTINFOTYPE;

-- AFM
INSERT INTO PUNKTINFOTYPE (INFOTYPEID, ANVENDELSE, BESKRIVELSE, INFOTYPE) VALUES (FLOOR(dbms_random.value(1,1E9)),'TEKST','Diverse ikke-standardiserede afmærkningstyper','AFM:diverse');
INSERT INTO PUNKTINFOTYPE (INFOTYPEID, ANVENDELSE, BESKRIVELSE, INFOTYPE) VALUES (FLOOR(dbms_random.value(1,1E9)),'FLAG','Horisontalt fikspunkt','AFM:horisontal');
INSERT INTO PUNKTINFOTYPE (INFOTYPEID, ANVENDELSE, BESKRIVELSE, INFOTYPE) VALUES (FLOOR(dbms_random.value(1,1E9)),'FLAG','Vertikalt fikspunkt','AFM:vertikal');
INSERT INTO PUNKTINFOTYPE (INFOTYPEID, ANVENDELSE, BESKRIVELSE, INFOTYPE) VALUES (FLOOR(dbms_random.value(1,1E9)),'FLAG','Horisontalt+vertikalt fikspunkt','AFM:horisontalvertikal');
INSERT INTO PUNKTINFOTYPE (INFOTYPEID, ANVENDELSE, BESKRIVELSE, INFOTYPE) VALUES (FLOOR(dbms_random.value(1,1E9)),'FLAG','Naturligt fikspunkt','AFM:naturlig');
-- AFM:xxx (311 stk)
INSERT INTO PUNKTINFOTYPE (INFOTYPEID, ANVENDELSE, BESKRIVELSE, INFOTYPE)
SELECT FLOOR(dbms_random.value(1,1E9)), 'TEKST', s.TEKST, 'AFM:' || s.AFMTYP
FROM (
    SELECT DISTINCT AFMTYP, TEKST FROM AFMTYP_TXT@refgeo WHERE TEKST != 'p_afmtxt' ORDER BY AFMTYP, TEKST
) s;

-- AFM:højde_over_xxx (12 stk)
INSERT INTO PUNKTINFOTYPE (INFOTYPEID, ANVENDELSE, BESKRIVELSE, INFOTYPE)
SELECT FLOOR(dbms_random.value(1,1E9)), 'TAL', 'Afmærkningens højde i meter over ' || s.INFOTYPE, 'AFM:højde_over_' || s.INFOTYPE
FROM (
    SELECT DISTINCT trim('.' FROM tekst) AS INFOTYPE FROM height_txt@refgeo WHERE tekst IS NOT NULL OR trim(tekst) != ''
) s;

-- ATTR
INSERT INTO PUNKTINFOTYPE (INFOTYPEID, ANVENDELSE, BESKRIVELSE, INFOTYPE) VALUES (FLOOR(dbms_random.value(1,1E9)), 'FLAG','Tilgang kun tilladt internt i SDFE','ATTR:restricted');
INSERT INTO PUNKTINFOTYPE (INFOTYPEID, ANVENDELSE, BESKRIVELSE, INFOTYPE) VALUES (FLOOR(dbms_random.value(1,1E9)), 'FLAG','Fysisk punkt ikke længere tilgængeligt','ATTR:tabtgået');
INSERT INTO PUNKTINFOTYPE (INFOTYPEID, ANVENDELSE, BESKRIVELSE, INFOTYPE) VALUES (FLOOR(dbms_random.value(1,1E9)), 'FLAG','Ikke etableret af SDFE','ATTR:ekstern');
INSERT INTO PUNKTINFOTYPE (INFOTYPEID, ANVENDELSE, BESKRIVELSE, INFOTYPE) VALUES (FLOOR(dbms_random.value(1,1E9)), 'FLAG','Punktet er en vandstandsmåler','ATTR:vandstandsmåler');
INSERT INTO PUNKTINFOTYPE (INFOTYPEID, ANVENDELSE, BESKRIVELSE, INFOTYPE) VALUES (FLOOR(dbms_random.value(1,1E9)), 'FLAG','Punktet er egnet til GNSS opmåling','ATTR:gnss_egnet');
INSERT INTO PUNKTINFOTYPE (INFOTYPEID, ANVENDELSE, BESKRIVELSE, INFOTYPE) VALUES (FLOOR(dbms_random.value(1,1E9)), 'TEKST','Beskrivelse af punktets placering','ATTR:beskrivelse');
INSERT INTO PUNKTINFOTYPE (INFOTYPEID, ANVENDELSE, BESKRIVELSE, INFOTYPE) VALUES (FLOOR(dbms_random.value(1,1E9)), 'FLAG','Højdefikspunkter','ATTR:højdefikspunkt');
INSERT INTO PUNKTINFOTYPE (INFOTYPEID, ANVENDELSE, BESKRIVELSE, INFOTYPE) VALUES (FLOOR(dbms_random.value(1,1E9)), 'FLAG','MV fikspunkter','ATTR:MV_punkt');
INSERT INTO PUNKTINFOTYPE (INFOTYPEID, ANVENDELSE, BESKRIVELSE, INFOTYPE) VALUES (FLOOR(dbms_random.value(1,1E9)), 'FLAG','GI fikspunkter','ATTR:GI_punkt');
INSERT INTO PUNKTINFOTYPE (INFOTYPEID, ANVENDELSE, BESKRIVELSE, INFOTYPE) VALUES (FLOOR(dbms_random.value(1,1E9)), 'FLAG','Hjælpepunkter','ATTR:hjælpepunkt');
INSERT INTO PUNKTINFOTYPE (INFOTYPEID, ANVENDELSE, BESKRIVELSE, INFOTYPE) VALUES (FLOOR(dbms_random.value(1,1E9)), 'TEKST','Sagsnummer i tinglysningsbogen','ATTR:tinglysningsnr');
INSERT INTO PUNKTINFOTYPE (INFOTYPEID, ANVENDELSE, BESKRIVELSE, INFOTYPE) VALUES (FLOOR(dbms_random.value(1,1E9)), 'TEKST','Bemærkning til punkt','ATTR:bemærkning');
INSERT INTO PUNKTINFOTYPE (INFOTYPEID, ANVENDELSE, BESKRIVELSE, INFOTYPE) VALUES (FLOOR(dbms_random.value(1,1E9)), 'FLAG','Kote-afmærkningen tabtgået, skæv eller beskadiget','ATTR:beskadiget');

-- IDENT
INSERT INTO PUNKTINFOTYPE (INFOTYPEID, ANVENDELSE, BESKRIVELSE, INFOTYPE) VALUES (FLOOR(dbms_random.value(1,1E9)), 'TEKST','Landsnummer','IDENT:landsnr');
INSERT INTO PUNKTINFOTYPE (INFOTYPEID, ANVENDELSE, BESKRIVELSE, INFOTYPE) VALUES (FLOOR(dbms_random.value(1,1E9)), 'TEKST','GNNS Stationsnummer','IDENT:GNSS');
INSERT INTO PUNKTINFOTYPE (INFOTYPEID, ANVENDELSE, BESKRIVELSE, INFOTYPE) VALUES (FLOOR(dbms_random.value(1,1E9)), 'TEKST','ID (refnr) fra REFGEO','IDENT:refgeo_id');
INSERT INTO PUNKTINFOTYPE (INFOTYPEID, ANVENDELSE, BESKRIVELSE, INFOTYPE) VALUES (FLOOR(dbms_random.value(1,1E9)), 'TEKST','Jessennummer','IDENT:jessen');
INSERT INTO PUNKTINFOTYPE (INFOTYPEID, ANVENDELSE, BESKRIVELSE, INFOTYPE) VALUES (FLOOR(dbms_random.value(1,1E9)), 'TEKST','GI og GM-nummre','IDENT:GI');
INSERT INTO PUNKTINFOTYPE (INFOTYPEID, ANVENDELSE, BESKRIVELSE, INFOTYPE) VALUES (FLOOR(dbms_random.value(1,1E9)), 'TEKST','Identtyper der forekommer sporadisk','IDENT:diverse');

-- NET
INSERT INTO PUNKTINFOTYPE (INFOTYPEID, ANVENDELSE, BESKRIVELSE, INFOTYPE) VALUES (FLOOR(dbms_random.value(1,1E9)), 'FLAG','Punkter der indgår i 10kmnet','NET:10KM');
INSERT INTO PUNKTINFOTYPE (INFOTYPEID, ANVENDELSE, BESKRIVELSE, INFOTYPE) VALUES (FLOOR(dbms_random.value(1,1E9)), 'FLAG','Punkter der indgår i GPSnet','NET:GPSNET');
INSERT INTO PUNKTINFOTYPE (INFOTYPEID, ANVENDELSE, BESKRIVELSE, INFOTYPE) VALUES (FLOOR(dbms_random.value(1,1E9)), 'FLAG','Punkter der indgår i Refdknet','NET:REFDK');
INSERT INTO PUNKTINFOTYPE (INFOTYPEID, ANVENDELSE, BESKRIVELSE, INFOTYPE) VALUES (FLOOR(dbms_random.value(1,1E9)), 'FLAG','Punkter der indgår i 5D-nettet','NET:5D');
INSERT INTO PUNKTINFOTYPE (INFOTYPEID, ANVENDELSE, BESKRIVELSE, INFOTYPE) VALUES (FLOOR(dbms_random.value(1,1E9)), 'FLAG','DMIs vandstandsmålere','NET:DMI');
INSERT INTO PUNKTINFOTYPE (INFOTYPEID, ANVENDELSE, BESKRIVELSE, INFOTYPE) VALUES (FLOOR(dbms_random.value(1,1E9)), 'FLAG','Punkter hvor der foretages tyngdemåling','NET:tyngde');
INSERT INTO PUNKTINFOTYPE (INFOTYPEID, ANVENDELSE, BESKRIVELSE, INFOTYPE) VALUES (FLOOR(dbms_random.value(1,1E9)), 'FLAG','Jessenpunkter','NET:jessen');
INSERT INTO PUNKTINFOTYPE (INFOTYPEID, ANVENDELSE, BESKRIVELSE, INFOTYPE) VALUES (FLOOR(dbms_random.value(1,1E9)), 'FLAG','Punkter i det færøske 10km net','NET:FO10KM');
INSERT INTO PUNKTINFOTYPE (INFOTYPEID, ANVENDELSE, BESKRIVELSE, INFOTYPE) VALUES (FLOOR(dbms_random.value(1,1E9)), 'FLAG','Contiously Operating Reference Stations - Permanente GNSS stationer','NET:CORS');
INSERT INTO PUNKTINFOTYPE (INFOTYPEID, ANVENDELSE, BESKRIVELSE, INFOTYPE) VALUES (FLOOR(dbms_random.value(1,1E9)), 'FLAG','Definerende punkter i ETRS89','NET:EUREFDK');
INSERT INTO PUNKTINFOTYPE (INFOTYPEID, ANVENDELSE, BESKRIVELSE, INFOTYPE) VALUES (FLOOR(dbms_random.value(1,1E9)), 'FLAG','Definerende vandstandsmålere i DVR90','NET:DEFVAND');
INSERT INTO PUNKTINFOTYPE (INFOTYPEID, ANVENDELSE, BESKRIVELSE, INFOTYPE) VALUES (FLOOR(dbms_random.value(1,1E9)), 'FLAG','Referencenetpunkter i Grønland','NET:REFGR');
INSERT INTO PUNKTINFOTYPE (INFOTYPEID, ANVENDELSE, BESKRIVELSE, INFOTYPE) VALUES (FLOOR(dbms_random.value(1,1E9)), 'FLAG','Afmærkninger ved den Dansk-Tyske grænse','NET:GRAENSEAFM');

-- REGION
INSERT INTO PUNKTINFOTYPE (INFOTYPEID, ANVENDELSE, BESKRIVELSE, INFOTYPE)
SELECT FLOOR(dbms_random.value(1,1E9)), 'FLAG', s.TEKST, 'REGION:' || s.INFOTYPE
FROM (
    SELECT DISTINCT rg.RGN_PRFX AS INFOTYPE, rg.RGN_NAME AS TEKST 
    FROM HVD_REF@refgeo href 
    INNER JOIN RGN_TABLE@refgeo rg ON href.RGN = rg.RGN_NO
) s;

-- SKITSE
INSERT INTO PUNKTINFOTYPE (INFOTYPEID, ANVENDELSE, BESKRIVELSE,INFOTYPE) VALUES (FLOOR(dbms_random.value(1,1E9)),'TEKST','Relativ sti til billedfil. Kan enten være i PNG eller SVG format','SKITSE:sti');
INSERT INTO PUNKTINFOTYPE (INFOTYPEID, ANVENDELSE, BESKRIVELSE,INFOTYPE) VALUES (FLOOR(dbms_random.value(1,1E9)),'TEKST','MD5 sum af billedfilen','SKITSE:md5');

-- Set INFOTYPEID to equal OBJECTID - just a hack to make it unique 
UPDATE PUNKTINFOTYPE SET INFOTYPEID = OBJECTID;

COMMIT;


SET DEFINE OFF;
--SQL Statement which produced this data:
--
--  SELECT * FROM FIRE_ADM.OBSERVATIONTYPE;
--
Insert into OBSERVATIONTYPE
   (OBJECTID, BESKRIVELSE, OBSERVATIONSTYPE, SIGTEPUNKT1, SIGTEPUNKT2, 
    VALUE1, VALUE2, VALUE3, VALUE4, VALUE5, 
    VALUE6, VALUE7, VALUE8)
 Values
   (1, 'Koteforskel fra fikspunkt1 til fikspunkt2 (h2-h1) opm�lt geometrisk ', 'geometrisk_koteforskel', 'true', 'false', 
    'Koteforskel [m]', 'Nivellementsl�ngde [m]', 'Antal opstillinger', 'Variabel vedr. eta_1 (refraktion) [m^3]', 'Afstandsafh�ngig varians koteforskel pr. m�lt koteforskel [m^2/m]', 
    'Afstandsuafh�ngig varians koteforskel pr. m�lt koteforskel [m^2]', 'Total varians koteforskel [m^2]', 'Pr�cisionsnivellement [0,1,2,3]');
Insert into OBSERVATIONTYPE
   (OBJECTID, BESKRIVELSE, OBSERVATIONSTYPE, SIGTEPUNKT1, SIGTEPUNKT2, 
    VALUE1, VALUE2, VALUE3, VALUE4, VALUE5, 
    VALUE6)
 Values
   (2, 'Koteforskel fra fikspunkt1 til fikspunkt2 (h2-h1) opm�lt trigonometrisk', 'trigonometrisk_koteforskel', 'true', 'false', 
    'Koteforskel [m]', 'Nivellementsl�ngde [m]', 'Antal opstillinger', 'Afstandsafh�ngig varians pr. m�lt koteforskel [m^2/m^2]', 'Afstandsuafh�ngig varians pr. m�lt koteforskel [m^2]', 
    'Total varians koteforskel [m^2]');
Insert into OBSERVATIONTYPE
   (OBJECTID, BESKRIVELSE, OBSERVATIONSTYPE, SIGTEPUNKT1, SIGTEPUNKT2, 
    VALUE1, VALUE2, VALUE3, VALUE4)
 Values
   (3, 'Horisontal retning med uret fra opstilling til sigtepunkt (reduceret til ellipsoiden)', 'retning', 'true', 'false', 
    'Retning [m]', 'Varians  retning hidr�rende instrument, pr. sats  [rad^2]', 'Samlet centreringsvarians for instrument prisme [m^2]', 'Total varians retning [rad^2]');
Insert into OBSERVATIONTYPE
   (OBJECTID, BESKRIVELSE, OBSERVATIONSTYPE, SIGTEPUNKT1, SIGTEPUNKT2, 
    VALUE1, VALUE2, VALUE3, VALUE4)
 Values
   (4, 'Horisontal afstand mellem opstilling og sigtepunkt (reduceret til ellipsoiden)', 'horisontalafstand', 'true', 'false', 
    'Afstand [m]', 'Afstandsafh�ngig varians afstandsm�ler [m^2/m^2]', 'Samlet varians for centrering af instrument og prisme, samt grundfejl p� afstandsm�ler [m^2]', 'Total varians horisontalafstand [m^2]');
Insert into OBSERVATIONTYPE
   (OBJECTID, BESKRIVELSE, OBSERVATIONSTYPE, SIGTEPUNKT1, SIGTEPUNKT2, 
    VALUE1, VALUE2, VALUE3, VALUE4)
 Values
   (5, 'Skr�afstand mellem opstilling og sigtepunkt', 'skr�afstand', 'true', 'false', 
    'Afstand [m]', 'Afstandsafh�ngig varians afstandsm�ler pr. m�ling [m^2/m^2]', 'Samlet varians for centrering af instrument og prisme, samt grundfejl p� afstandsm�ler pr. m�ling [m^2]', 'Total varians skr�afstand [m^2]');
Insert into OBSERVATIONTYPE
   (OBJECTID, BESKRIVELSE, OBSERVATIONSTYPE, SIGTEPUNKT1, SIGTEPUNKT2, 
    VALUE1, VALUE2, VALUE3, VALUE4, VALUE5, 
    VALUE6)
 Values
   (6, 'Zenitvinkel mellem opstilling og sigtepunkt', 'zenitvinkel', 'true', 'false', 
    'Zenitvinkel [rad]', 'Instrumenth�jde [m]', 'H�jde sigtepunkt [m]', 'Varians zenitvinkel hidr�rende instrument, pr. sats  [rad^2]', 'Samlet varians instrumenth�jde/h�jde sigtepunkt [m^2]', 
    'Total varians zenitvinkel [rad^2]');
Insert into OBSERVATIONTYPE
   (OBJECTID, BESKRIVELSE, OBSERVATIONSTYPE, SIGTEPUNKT1, SIGTEPUNKT2, 
    VALUE1, VALUE2, VALUE3, VALUE4, VALUE5, 
    VALUE6, VALUE7, VALUE8, VALUE9, VALUE10, 
    VALUE11, VALUE12)
 Values
   (7, 'Vektor der beskriver koordinatforskellen fra punkt 1 til punkt 1 (v2-v1)', 'vektor', 'true', 'false', 
    'dx [m]', 'dy [m]', 'dz [m]', 'Afstandsafh�ngig varians [m^2/m^2]', 'Samlet varians for centrering af antenner [m^2]', 
    'Total varians [m^2]', 'Varians dx [m^2]', 'Varians dy [m^2]', 'Varians dz [m^2]', 'Covarians dx, dy [m^2]', 
    'Covarians dx, dz [m^2]', 'Covarians dy, dz [m^2]');
COMMIT;

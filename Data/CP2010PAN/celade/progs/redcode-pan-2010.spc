//------------------------------------------------------------------------------
// 2. Calcular y guardar las variables geográficas con los códigos
//------------------------------------------------------------------------------

DEFINE DAM.REDCODEK
AS VAL ( CMPCODE (DAM ) )
NOTAPPLICABLE 0
MISSING  1
RANGE    1 : 12
ALIAS    REDCODE
GROUP    UBIGEO
VARLABEL "Provincia" 
VALUELABELS 
 1 "BOCAS DEL TORO"
 2 "COCLÉ"
 3 "COLÓN"
 4 "CHIRIQUÍ"
 5 "DARIÉN"
 6 "HERRERA"
 7 "LOS SANTOS"
 8 "PANAMÁ"
 9 "VERAGUAS"
10 "COMARCA KUNA YALA"
11 "COMARCA EMBERÁ"
12 "COMARCA NGÖBE BUGLÉ"

SAVE "..\vars\dam-redcode"

//-----------------------------------------------------------------------------
DEFINE DAME.REDCODEK
AS VAL ( CMPCODE( DAME ) )
NOTAPPLICABLE 0
MISSING  1
RANGE    101 : 1207
ALIAS    REDCODE
GROUP    UBIGEO
VARLABEL "Distrito" 
VALUELABELS 
 101 "BOCAS DEL TORO"
 102 "CHANGUINOLA"
 103 "CHIRIQUI GRANDE"
 201 "AGUADULCE"
 202 "ANTON"
 203 "LA PINTADA"
 204 "NATA"
 205 "OLA"
 206 "PENONOME"
 301 "COLON"
 302 "CHAGRES"
 303 "DONOSO"
 304 "PORTOBELO"
 305 "SANTA ISABEL"
 401 "ALANJE"
 402 "BARU"
 403 "BOQUERON"
 404 "BOQUETE"
 405 "BUGABA"
 406 "DAVID"
 407 "DOLEGA"
 408 "GUALACA"
 409 "REMEDIOS"
 410 "RENACIMIENTO"
 411 "SAN FELIX"
 412 "SAN LORENZO"
 413 "TOLE"
 501 "CHEPIGANA"
 502 "PINOGANA"
 601 "CHITRE"
 602 "LAS MINAS"
 603 "LOS POZOS"
 604 "OCU"
 605 "PARITA"
 606 "PESE"
 607 "SANTA MARIA"
 701 "GUARARE"
 702 "LAS TABLAS"
 703 "LOS SANTOS"
 704 "MACARACAS"
 705 "PEDASI"
 706 "POCRI"
 707 "TONOSI"
 801 "ARRAIJAN"
 802 "BALBOA"
 803 "CAPIRA"
 804 "CHAME"
 805 "CHEPO"
 806 "CHIMAN"
 807 "LA CHORRERA"
 808 "PANAMA"
 809 "SAN CARLOS"
 810 "SAN MIGUELITO"
 811 "TABOGA"
 901 "ATALAYA"
 902 "CALOBRE"
 903 "CAÑAZAS"
 904 "LA MESA"
 905 "LAS PALMAS"
 906 "MONTIJO"
 907 "RIO DE JESUS"
 908 "SAN FRANCISCO"
 909 "SANTA FE"
 910 "SANTIAGO"
 911 "SONA"
 912 "MARIATO"
1001 "COMARCA KUNA YALA"
1101 "CEMACO"
1102 "SAMBU"
1201 "BESIKO"
1202 "MIRONO"
1203 "MINA"
1204 "NOLE DUIMA"
1205 "ÑURUM"
1206 "KANKINTU"
1207 "KUSAPIN"

SAVE "..\vars\dame-redcode"

//Frecuencia generada por programa para las variables definidas
FREQ
	DAM.REDCODE,
	DAME.REDCODE
 outputfile xls "ubigeos-freq.xlsX" append

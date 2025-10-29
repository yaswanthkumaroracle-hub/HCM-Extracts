Report Paths: Custom/Human Capital Management/Yas/YK_I002_Report.xdo -- RTF & eText
Template Name: YK_I002         -- RTF
Template Name: YK_I002_eText         -- eText

/* Value set: YK_I002_DEPT_CODE_VS */

SELECT 
 
'MHS:'||PD.ORGANIZATION_CODE

FROM 
PER_ALL_PEOPLE_F PAPF,
PER_ALL_ASSIGNMENTS_M PAAM,
PER_DEPARTMENTS PD

WHERE
1=1
AND PAPF.PERSON_ID = PAAM.PERSON_ID
AND PAAM.ORGANIZATION_ID = PD.ORGANIZATION_ID

AND PAAM.PERSON_ID = :{PARAMETER.P_PERSON_ID}
AND TRUNC(SYSDATE) BETWEEN PAPF.EFFECTIVE_START_DATE AND PAPF.EFFECTIVE_END_DATE
AND TRUNC(SYSDATE) BETWEEN PAAM.EFFECTIVE_START_DATE AND PAAM.EFFECTIVE_END_DATE
AND TRUNC(SYSDATE) BETWEEN PD.EFFECTIVE_START_DATE AND PD.EFFECTIVE_END_DATE


/* FAST FORMULA */
/******************************************************************************

FORMULA NAME: YK_I002_DEPT_CODE_FF

FORMULA TYPE: Extract Rule

DESCRIPTION: This Formula is used to get DEPT CODE as MHS:<DEPT_CODE>
 
Change History:

Name                    			Date        		Comments

-----------------------------------------------------------------------------------

Yaswanth Kumar Munagapati	   	17-AUG-2025     		Initial Design

-----------------------------------------------------------------------------------

*********************************************************************************/ 

DEFAULT FOR DATA_ELEMENTS IS EMPTY_TEXT_TEXT

DEFAULT FOR RULE_VALUE is ' '

DEFAULT FOR L_VALUE is ' '

INPUTS ARE DATA_ELEMENTS (TEXT_TEXT)

L_VALUE = ' '
 
IF DATA_ELEMENTS.EXISTS('Person_Id') THEN

(

  BIND_VAL = DATA_ELEMENTS['Person_Id']

  BIND_PARAM = '|=P_PERSON_ID='''

  V_CONCAT_VAL = BIND_PARAM||BIND_VAL||''''

  L_VALUE = GET_VALUE_SET('YK_I002_DEPT_CODE_VS',V_CONCAT_VAL)

  )

 
  RULE_VALUE = L_VALUE 

  RETURN RULE_VALUE
  
  
  /*------------------------------------------------------------------------------------*/
  
  
  
 /* Value set: YK_I002_JOB_CODE_VS */

SELECT 
 
'MH:'||PJ.JOB_CODE

FROM 
PER_ALL_PEOPLE_F PAPF,
PER_ALL_ASSIGNMENTS_M PAAM,
PER_JOBS PJ

WHERE
1=1
AND PAPF.PERSON_ID = PAAM.PERSON_ID
AND PAAM.JOB_ID = PJ.JOB_ID

AND PAAM.PERSON_ID = :{PARAMETER.P_PERSON_ID}
AND TRUNC(SYSDATE) BETWEEN PAPF.EFFECTIVE_START_DATE AND PAPF.EFFECTIVE_END_DATE
AND TRUNC(SYSDATE) BETWEEN PAAM.EFFECTIVE_START_DATE AND PAAM.EFFECTIVE_END_DATE
AND TRUNC(SYSDATE) BETWEEN PJ.EFFECTIVE_START_DATE AND PJ.EFFECTIVE_END_DATE


/* FAST FORMULA */
/******************************************************************************

FORMULA NAME: YK_I002_JOB_CODE_FF

FORMULA TYPE: Extract Rule

DESCRIPTION: This Formula is used to get DEPT CODE as MH:<JOB_CODE>
 
Change History:

Name                    			Date        		Comments

-----------------------------------------------------------------------------------

Yaswanth Kumar Munagapati	   	17-AUG-2025     		Initial Design

-----------------------------------------------------------------------------------

*********************************************************************************/ 

DEFAULT FOR DATA_ELEMENTS IS EMPTY_TEXT_TEXT

DEFAULT FOR RULE_VALUE is ' '

DEFAULT FOR L_VALUE is ' '

INPUTS ARE DATA_ELEMENTS (TEXT_TEXT)

L_VALUE = ' '
 
IF DATA_ELEMENTS.EXISTS('Person_Id') THEN

(

  BIND_VAL = DATA_ELEMENTS['Person_Id']

  BIND_PARAM = '|=P_PERSON_ID='''

  V_CONCAT_VAL = BIND_PARAM||BIND_VAL||''''

  L_VALUE = GET_VALUE_SET('YK_I002_JOB_CODE_VS',V_CONCAT_VAL)

  )

 
  RULE_VALUE = L_VALUE 

  RETURN RULE_VALUE
  
 /*---------------------------------------------------------------------------------------------------*/ 
  
   /* Value set: YK_I002_DOB_VS */

SELECT 
 
TO_CHAR(PP.DATE_OF_BIRTH, 'DD/MM/YYYY')

FROM 
PER_ALL_PEOPLE_F PAPF,
PER_PERSONS PP

WHERE
1=1
AND PAPF.PERSON_ID = PP.PERSON_ID

AND PP.PERSON_ID = :{PARAMETER.P_PERSON_ID}
AND TRUNC(SYSDATE) BETWEEN PAPF.EFFECTIVE_START_DATE AND PAPF.EFFECTIVE_END_DATE




/* FAST FORMULA */
/******************************************************************************

FORMULA NAME: YK_I002_DOB_FF

FORMULA TYPE: Extract Rule

DESCRIPTION: This Formula is used to get DOB Format DD/MM/YYYY
 
Change History:

Name                    			Date        		Comments

-----------------------------------------------------------------------------------

Yaswanth Kumar Munagapati	   	17-AUG-2025     		Initial Design

-----------------------------------------------------------------------------------

*********************************************************************************/ 

DEFAULT FOR DATA_ELEMENTS IS EMPTY_TEXT_TEXT

DEFAULT FOR RULE_VALUE is ' '

DEFAULT FOR L_VALUE is ' '

INPUTS ARE DATA_ELEMENTS (TEXT_TEXT)

L_VALUE = ' '
 
IF DATA_ELEMENTS.EXISTS('Person_Id') THEN

(

  BIND_VAL = DATA_ELEMENTS['Person_Id']

  BIND_PARAM = '|=P_PERSON_ID='''

  V_CONCAT_VAL = BIND_PARAM||BIND_VAL||''''

  L_VALUE = GET_VALUE_SET('YK_I002_DOB_VS',V_CONCAT_VAL)

  )

 
  RULE_VALUE = L_VALUE 

  RETURN RULE_VALUE
  
  
  
  
 /*------------------------------------------------------------------------------------*/ 
  
     /* Value set: YK_I002_HIRE_DATE_VS */

SELECT 
 
TO_CHAR(PPOS.DATE_START, 'DD/MM/YYYY')

FROM 
PER_ALL_PEOPLE_F PAPF,
PER_ALL_ASSIGNMENTS_M PAAM,
PER_PERIODS_OF_SERVICE PPOS

WHERE
1=1
AND PAPF.PERSON_ID = PAAM.PERSON_ID
AND PAAM.PERIOD_OF_SERVICE_ID = PPOS.PERIOD_OF_SERVICE_ID

AND PAAM.PERSON_ID = :{PARAMETER.P_PERSON_ID}
AND TRUNC(SYSDATE) BETWEEN PAPF.EFFECTIVE_START_DATE AND PAPF.EFFECTIVE_END_DATE




/* FAST FORMULA */
/******************************************************************************

FORMULA NAME: YK_I002_HIRE_DATE_FF

FORMULA TYPE: Extract Rule

DESCRIPTION: This Formula is used to get HIRE DATE Format DD/MM/YYYY
 
Change History:

Name                    			Date        		Comments

-----------------------------------------------------------------------------------

Yaswanth Kumar Munagapati	   	17-AUG-2025     		Initial Design

-----------------------------------------------------------------------------------

*********************************************************************************/ 

DEFAULT FOR DATA_ELEMENTS IS EMPTY_TEXT_TEXT

DEFAULT FOR RULE_VALUE is ' '

DEFAULT FOR L_VALUE is ' '

INPUTS ARE DATA_ELEMENTS (TEXT_TEXT)

L_VALUE = ' '
 
IF DATA_ELEMENTS.EXISTS('Person_Id') THEN

(

  BIND_VAL = DATA_ELEMENTS['Person_Id']

  BIND_PARAM = '|=P_PERSON_ID='''

  V_CONCAT_VAL = BIND_PARAM||BIND_VAL||''''

  L_VALUE = GET_VALUE_SET('YK_I002_HIRE_DATE_VS',V_CONCAT_VAL)

  )

 
  RULE_VALUE = L_VALUE 

  RETURN RULE_VALUE
  
  /*-----------------------------------------------------------*/
 
     /* Value set: YK_I002_YOE_VS */

Select

round(MONTHS_BETWEEN(trunc(sysdate), trunc(ppos.date_start))/12,2)

From
PER_ALL_PEOPLE_F PAPF
,PER_ALL_ASSIGNMENTS_M PAAM
,PER_PERIODS_OF_SERVICE PPOS

WHERE 1=1
AND PAPF.PERSON_ID = PAAM.PERSON_ID
AND PAAM.PERIOD_OF_SERVICE_ID = PPOS.PERIOD_OF_SERVICE_ID

AND PAAM.PERSON_ID = :{PARAMETER.P_PERSON_ID}

AND TRUNC(SYSDATE) BETWEEN PAPF.EFFECTIVE_START_DATE AND PAPF.EFFECTIVE_END_DATE

AND TRUNC(SYSDATE) BETWEEN PAAM.EFFECTIVE_START_DATE AND PAAM.EFFECTIVE_END_DATE




/* FAST FORMULA */
/******************************************************************************

FORMULA NAME: YK_I002_YOE_FF

FORMULA TYPE: Extract Rule

DESCRIPTION: This Formula is used to get YOE
 
Change History:

Name                    			Date        		Comments

-----------------------------------------------------------------------------------

Yaswanth Kumar Munagapati	   	17-AUG-2025     		Initial Design

-----------------------------------------------------------------------------------

*********************************************************************************/ 

DEFAULT FOR DATA_ELEMENTS IS EMPTY_TEXT_TEXT

DEFAULT FOR RULE_VALUE is ' '

DEFAULT FOR L_VALUE is ' '

INPUTS ARE DATA_ELEMENTS (TEXT_TEXT)

L_VALUE = ' '
 
IF DATA_ELEMENTS.EXISTS('Person_Id') THEN

(

  BIND_VAL = DATA_ELEMENTS['Person_Id']

  BIND_PARAM = '|=P_PERSON_ID='''

  V_CONCAT_VAL = BIND_PARAM||BIND_VAL||''''

  L_VALUE = GET_VALUE_SET('YK_I002_YOE_VS',V_CONCAT_VAL)

  )

 
  RULE_VALUE = L_VALUE 

  RETURN RULE_VALUE

/*------------------------------------------------------------------------------------------*/

/*Template Mapping to Extracts*/
Report: Custom/Human Capital Management/Yas/YK_I002_Report.xdo -- RTF & eText
Template Name: YK_I002			-- RTF
Template Name: I002_eText		-- eText

/*------------------------------------------------------------------------*/

/* Extract Run */
Instance: YK_EXT_I002_EMP_DETAILS_V1_081825_V1



"! <p class="shorttext synchronized" lang="en">JSON to ABAP Conversion</p>
CLASS ZCL_JSON_TO_ABAP DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
    INTERFACES IF_OO_ADT_CLASSRUN.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS ZCL_JSON_TO_ABAP IMPLEMENTATION.


  METHOD IF_OO_ADT_CLASSRUN~MAIN.

    TYPES: BEGIN OF T_STRUCT,
             C1 TYPE STRING,
             C2 TYPE STRING,
           END OF T_STRUCT.
    TYPES T_TAB TYPE STANDARD TABLE OF T_STRUCT.
    DATA ITAB TYPE T_TAB.

    DATA(JSON) = `{"TEXT":"JSON", "SECOND": "Second Variable", "TAB": [{"C1": "HI", "C2":"Hey"},{"C1": "HI2", "C2":"Hey2"}]}`.
    DATA TEXT TYPE STRING.
    DATA SECOND TYPE STRING.
    CALL TRANSFORMATION ID SOURCE XML JSON
                        RESULT TEXT = TEXT
                               SECOND = SECOND
                               TAB = ITAB.
    OUT->WRITE( TEXT ).
    OUT->WRITE( SECOND ).
    OUT->WRITE(  ITAB ).
  ENDMETHOD.
ENDCLASS.

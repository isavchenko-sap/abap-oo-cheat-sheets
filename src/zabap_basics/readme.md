# ABAP Language Basics

This folder contains fundamental examples and explanations of ABAP syntax and language rules. It is intended for beginners or developers transitioning to ABAP from other languages.

## 🔤 General Syntax Rules

### Statements

Every statement ends with a period (`.`).  
ABAP is not case-sensitive, but keywords are traditionally written in uppercase.

```abap
DATA lv_name TYPE string.
WRITE: / 'Hello, world'.
```

## 🔠 Naming Conventions

- `lv_` – local variable  
- `lt_` – internal table  
- `ls_` – structure  
- `gv_` – global variable  
- Class names: `ZCL_...`  
- Interface names: `ZIF_...`

Use underscores to separate words: `lt_employee_list`

## 🧱 Data Types and Declarations

### Simple Types

```abap
DATA lv_text TYPE string.
DATA lv_count TYPE i.
DATA lv_flag TYPE abap_bool.
```

### Structured Types

```abap
TYPES: BEGIN OF ty_employee,
         id   TYPE i,
         name TYPE string,
       END OF ty_employee.

DATA ls_employee TYPE ty_employee.
```

## 📚 Control Structures

```abap
IF lv_flag = abap_true.
  WRITE: 'Flag is true'.
ELSE.
  WRITE: 'Flag is false'.
ENDIF.

LOOP AT lt_data INTO DATA(ls_row).
  WRITE: / ls_row-name.
ENDLOOP.
```

## 🔄 Classes and Methods

```abap
CLASS zcl_example DEFINITION.
  PUBLIC SECTION.
    METHODS: greet.
ENDCLASS.

CLASS zcl_example IMPLEMENTATION.
  METHOD greet.
    WRITE: 'Hello from method!'.
  ENDMETHOD.
ENDCLASS.

START-OF-SELECTION.
  DATA(lo_obj) = NEW zcl_example( ).
  lo_obj->greet( ).
```

## ✍️ Formatting: Spaces Around Brackets

ABAP has **strict rules and conventions** for spaces before and after brackets:

✅ Correct:

```abap
WRITE: |Hello { lv_name }!|.
DATA(lo_obj) = NEW zcl_class( ).
```

❌ Incorrect:

```abap
WRITE: |Hello {lv_name} !|.       " No space inside {}
DATA(lo_obj)=NEW zcl_class().     " No spaces around parentheses
```

### 📌 Rule of Thumb

- Always **add spaces inside curly braces** (`{ lv_var }`) when using them in string templates.
- Always **add spaces around parentheses** for method calls and constructors:  
  `method( )`, `NEW class( )`, not `method()` or `NEW class()`.

Proper spacing improves readability and aligns with Clean ABAP guidelines.

## ❗ Tips

- Use `DATA(...)` for inline declarations.
- Always check `SY-SUBRC` after critical operations like `SELECT`, `READ TABLE`, etc.
- Avoid `FORM` routines in favor of classes and methods.
- Prefer `NEW`, `VALUE`, `COND`, `SWITCH` in modern ABAP.

## 📌 Notes

This folder is meant as a foundation to support further learning, such as:
- Object-oriented design patterns (`/zabap_oo_patterns`)
- Practical ADT-based examples (`/zabap_oo_examples`)

Stay modern — write **clean**, **modular**, **testable** ABAP.

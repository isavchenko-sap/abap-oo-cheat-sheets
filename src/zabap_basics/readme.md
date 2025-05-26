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

## ✍️ Formatting: Spaces and Readability

ABAP is whitespace-sensitive in terms of readability and best practices, even if the compiler doesn’t enforce it.

### ✅ Spaces Around Brackets

Always use **spaces** between brackets and their contents:

```abap
" ✅ Correct
WRITE: |Hello { lv_name }!|.
DATA(lo_obj) = NEW zcl_class( ).

" ❌ Incorrect
WRITE: |Hello {lv_name} !|.
DATA(lo_obj)=NEW zcl_class().
```

> ✅ Use space inside `{ }` in string templates  
> ✅ Use space before `(` and after `)` in method calls or constructor expressions

---

### ✅ Spaces in Conditions

When writing logical expressions (e.g. `IF`, `WHILE`), put **spaces between operands, operators, and brackets**:

```abap
" ✅ Correct
IF lv_count > 0 AND lv_flag = abap_true.

" ❌ Incorrect
IF(lv_count>0 AND lv_flag=abap_true).
```

> ✅ Always use spaces around operators (`=`, `>`, `<`, `AND`, `OR`, etc.)  
> ✅ Never write condition directly inside parentheses like other languages

### 📌 Rule of Thumb

- Always **add spaces inside curly braces** (`{ lv_var }`) when using them in string templates.
- Always **add spaces around parentheses** for method calls and constructors:  
  `method( )`, `NEW class( )`, not `method()` or `NEW class()`.

Proper spacing improves readability and aligns with Clean ABAP guidelines.

## 📌 Notes

This folder is meant as a foundation to support further learning, such as:
- Object-oriented design patterns (`/zabap_oo_patterns`)
- Practical ADT-based examples (`/zabap_oo_examples`)

Stay modern — write **clean**, **modular**, **testable** ABAP.

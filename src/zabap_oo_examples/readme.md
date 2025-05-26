# ABAP OO Practical Examples

This folder contains practical code examples that explore specific ABAP OO techniques, patterns, and language features. They are structured to demonstrate clean coding practices and common ABAP scenarios, especially in the context of modern SAP development.

---

## ⚙️ About `IF_OO_ADT_CLASSRUN`

Many of the classes in this folder implement the `IF_OO_ADT_CLASSRUN` interface. This is a **special interface used by ABAP Development Tools (ADT)** in Eclipse to allow classes to be executed directly, similar to a `main()` method in other languages.

### Why is this useful?

- You can run a class directly via right-click → *Run As → ABAP Application* in Eclipse.
- Great for **quick demos**, **utility testing**, and **standalone logic validation**.
- Eliminates the need to wrap code in reports or programs for testing purposes.

### When to use it?

Use `IF_OO_ADT_CLASSRUN` when:
- You are building example logic or test drivers.
- You want to encapsulate a single-purpose process (e.g. transformation, conversion, performance test).
- You develop standalone utilities or CLI-style jobs.

### ⚠️ Important Limitation

When using `IF_OO_ADT_CLASSRUN`, you **cannot use classic output statements** like:

```abap
WRITE: / 'Text', var.
ULINE.
SKIP.
```

Instead, use the provided out object to write output to the console:

```abap
METHOD if_oo_adt_classrun~main.
  out->write( |Hello from ADT classrun!| ).
ENDMETHOD.
```

This is the only supported way to print output when using IF_OO_ADT_CLASSRUN.

---

## 🔧 Included Examples

| Topic | Class |
|-------|-------|
| Constructor expressions | `zcl_constructor_expression` |
| Inline declarations | `zcl_inline_declare` |
| Field-symbol vs reference performance | `zcl_fs_ref_perf_testing` |
| Hungarian notation | `zcl_hungarian_notation` |
| ABAP → JSON serialization | `zcl_abap_to_json`, `zcl_abap_to_json_id` |
| JSON → ABAP parsing | `zcl_json_to_abap` |
| JSON restore logic | `zcl_abap_to_json_restore` |
| JSON → XML transformation | `zcl_json_to_xml`, `zcl_json_to_xml_call` |
| Object/XML serialization test | `zcl_obj_xml_test` |
| Object-oriented learning steps | `zcl_oo_tutorial_1` → `zcl_oo_tutorial_5` and testers |

> Most of these classes can be **run directly** in Eclipse thanks to `IF_OO_ADT_CLASSRUN`.

---

## 🎯 Learning Goals

- Apply ABAP OO principles to small, focused tasks.
- Practice clean ABAP syntax and class structure.
- Learn modern ABAP patterns through hands-on examples.
- Use the ADT execution model to test and demonstrate class logic.

---

## 📌 Origin

These examples are adapted from [SAP-samples/abap-oo-basics](https://github.com/SAP-samples/abap-oo-basics) and organized for individual exploration, reuse, and extensi

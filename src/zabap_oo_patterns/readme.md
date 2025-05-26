# ABAP OO Design Patterns

This folder contains clean and educational implementations of classic object-oriented **design patterns** in ABAP. Each class illustrates a specific concept, often with paired test classes.

## 🧱 Included Patterns

| Pattern | Main Class | Tester |
|--------|------------|--------|
| Basic Class | `zcl_1_basic_class` | `zcl_1_basic_class_tester` |
| Instance vs Static | `zcl_2_instance`, `zcl_2_static` | `zcl_2_static_and_inst_tester` |
| Factory | `zcl_3_factory` | `zcl_3_factory_tester` |
| Singleton | `zcl_4_singleton` | `zcl_4_singleton_tester_1` |
| Composite | `zcl_5_composite_base` + derived classes | `zcl_5_composite_tester` |

---

## 🔍 Highlights

- Use of constructors, method overriding, and encapsulation.
- Static vs instance behavior comparison.
- Composite pattern using aircraft models (e.g. `a340`, `747`, etc.).
- Proper ABAP naming and modular structure.

> Use these as templates when applying clean ABAP OO patterns in your projects.

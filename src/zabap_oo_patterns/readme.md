# ABAP OO Design Patterns

This folder contains educational implementations of **object-oriented design patterns** in ABAP. These patterns are widely used in software engineering to solve common design problems and promote maintainable, scalable, and testable code. Each class is written in clean ABAP style, often with a paired test class to illustrate usage.

## 📘 What is a Design Pattern?

Design patterns are typical solutions to common problems in software design. They are not code snippets but templates for solving problems that can be adapted to different situations. In ABAP, applying these patterns improves modularity, reusability, and unit testability of business logic.

---

## 🧱 Included Patterns

| Pattern | Description | Class(es) |
|--------|-------------|-----------|
| **Basic Class** | A simple class structure to illustrate the foundation of ABAP OO: attributes and methods. | `zcl_1_basic_class`, `zcl_1_basic_class_tester` |
| **Instance vs Static** | Demonstrates the difference between instance-based behavior (stateful) and static method usage (stateless utilities). | `zcl_2_instance`, `zcl_2_static`, `zcl_2_static_and_inst_tester` |
| **Factory** | Encapsulates object creation logic. This avoids direct instantiation and supports extensibility and testing. | `zcl_3_factory`, `zcl_3_factory_tester` |
| **Singleton** | Ensures a class has only one instance and provides global access to it. Useful for shared objects like config managers. | `zcl_4_singleton`, `zcl_4_singleton_tester_1` |
| **Composite** | Treats individual objects and compositions uniformly. Demonstrated here using airplane components (e.g., different aircraft types inheriting from a base). | `zcl_5_composite_base`, `zcl_5_composite_747`, `zcl_5_composite_a340`, `zcl_5_composite_other`, `zcl_5_composite_tester` |

---

## 🧠 Why Use Patterns in ABAP?

Using object-oriented design patterns in ABAP:

- Reduces code duplication.
- Helps organize large codebases.
- Encourages SOLID principles.
- Makes business logic easier to understand and test.

---

## 🛠 How to Use

1. Import this folder using [ABAPGit](https://docs.abapgit.org/).
2. Open the relevant classes in Eclipse (ADT) or SE24.
3. Review both the core and test classes to understand behavior.
4. Try extending a pattern to your business scenario (e.g. apply the Factory pattern to sales order creation logic).

---

## 🧩 Tip

While ABAP is not Java or C#, the principles of OOP and design patterns are just as relevant — especially in **modern ABAP on SAP BTP** or **clean core S/4HANA** development.

> Patterns like Factory, Singleton, and Composite are often used in frameworks like RAP, BOPF, and classic OO-based business logic.

---

## 📌 Credits

Based on [SAP-samples/abap-oo-basics](https://github.com/SAP-samples/abap-oo-basics), this folder is refactored for clarity and reusability in enterprise SAP projects.

# ABAP Object-Oriented Design Patterns

This folder contains ABAP implementations of common **Object-Oriented Design Patterns**, adapted to the ABAP programming language. Each pattern is implemented as a separate class and demonstrates how these principles can be applied in real-world SAP development.

These examples are based on the [SAP-samples/abap-oo-basics](https://github.com/SAP-samples/abap-oo-basics) repository and are intended to be a hands-on reference for SAP developers working with ABAP OO.

## 📚 Included Patterns

| Pattern | Description |
|--------|-------------|
| [Strategy](./zcl_oop_strategy) | Encapsulates interchangeable algorithms and selects them at runtime. |
| [Factory Method](./zcl_oop_factory_method) | Delegates instantiation logic to subclasses. |
| [Command](./zcl_oop_command) | Encapsulates a request as an object to decouple sender and receiver. |
| [Template Method](./zcl_oop_template) | Defines the program skeleton in a base class, allowing subclasses to override steps. |
| [State](./zcl_oop_state) | Allows an object to alter its behavior when its internal state changes. |
| [Visitor](./zcl_oop_visitor) | Defines new operations without changing the classes of the elements. |
| [Builder](./zcl_oop_builder) | Separates object construction from its representation. |
| [Observer](./zcl_oop_observer) | Notifies multiple objects about state changes. |
| [Chain of Responsibility](./zcl_oop_chain_of_responsibility) | Passes a request through a chain of handlers. |
| [Memento](./zcl_oop_memento) | Captures and restores an object's internal state. |
| [Decorator](./zcl_oop_decorator) | Dynamically adds behavior to objects at runtime. |

---

## 🛠 Usage

Each pattern is implemented as a global class (`ZCL_OOP_<PATTERN>`) and includes a sample implementation that can be tested directly within an ABAP system. To try them out:

1. Import the classes using ABAPGit.
2. Run the example reports or create your own test logic.
3. Modify and extend as needed to suit your development context.

---

## 📌 Source

These examples are adapted from [SAP-samples/abap-oo-basics](https://github.com/SAP-samples/abap-oo-basics) and enriched with descriptions for easier onboarding and understanding.


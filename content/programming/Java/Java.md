---
title: Java Programming
---


### Code Structure in Java:
- The source code file holds one class definition. The class represents a piece of the program.
- A class has one or more methods.
- A method is a set of statements that states how a method should be performed.

### How Java works:
- Type a source code file(example.java).
- Compile source code file to create a bytecode.
- The compiler gives complied output file(exampe.class)
- Java virtual machine runs an example.class file.
- Every Java application must have at least one class and only one main method per application.
- A JVM starts executing its main() method and keeps running until the main method is finished.

### Some Syntax:
1. Each statement must end with a semicolon.
2. Most white spaces don’t matter.
3. The variable must be declared with type and name.
4. Classes and methods must be defined between a pair of curly braces.
5. Java has three standard looping constructs - while, do-while and for a loop.
6. A conditional test is an expression that results in a boolean value.

```java
public class MyClass {
  public static void main(String[] args) {
    System.out.println("Hello World");
  }
}
```

### Variables
Variables are containers for storing data values.
In Java, there are different types of variables, for example:
- String - stores text, such as "Hello". String values are surrounded by double quotes
- int - stores integers (whole numbers), without decimals, such as 123 or -123
- float - stores floating-point numbers, with decimals, such as 19.99 or -19.99
- char - stores single characters, such as 'a' or 'B'. Char values are surrounded by single quotes
- boolean - stores values with two states: true or false

### Data Types
Data types are divided into two groups:
- Primitive data types - includes byte, short, int, long, float, double, boolean and char
- Non-primitive data types - such as String, Arrays, and Classes.

### Conditions and If Statements
Java supports the usual logical conditions from mathematics:
- Less than: a < b
- Less than or equal to: a <= b
- Greater than: a > b
- Greater than or equal to: a >= b
- Equal to a == b
- Not Equal to: a != b

Java has the following conditional statements:
- Use **if** to specify a block of code to be executed, **if a specified condition is true**
- Use **else** to specify a block of code to be executed **if the same condition is false**
- Use **else if** to specify a **new condition to test, if the first condition is false**
- Use the **switch** to specify **many alternative blocks of code to be executed**

```java
if (condition) {
  // block of code to be executed if the condition is true
}
```

### While Loop

The while loop loops through a block of code as long as a specified condition is true:

```java
while (condition) {
  // code block to be executed
}
```

### Do/While Loop
The do/while loop is a variant of the while loop. This loop will execute the code block once, before checking if the condition is true, then it will repeat the loop as long as the condition is true.
```java
do {
  // code block to be executed
}
while (condition);
```
### For Loop

The for statement provides a compact way to iterate over a range of values. It repeatedly loops until a particular condition is satisfied.

```java
for (statement 1; statement 2; statement 3) {
  // code block to be executed
 }
```

### Arrays
Arrays are used to store multiple values in a single variable, instead of declaring separate variables for each value.
To declare an array, define the variable type with square brackets:
```java
String[] cars = {"Volvo", "BMW", "Ford", "Mazda"};
```

#### Access the Elements of an Array
We can access an array element by referring to the index number.
```java
String[] cars = {"Volvo", "BMW", "Ford", "Mazda"};
System.out.println(cars[0]);
// Outputs Volvo
```

More on Java: [Click here](https://www.tutorialspoint.com/java/index.htm)
---
title: C++  Programming
---


## About

C++ is a middle-level language rendering it the advantage of programming low-level (drivers, kernels) and even higher-level applications (games, GUI, desktop apps etc.). The basic syntax and code structure of both C and C++ are the same.

Some of the **features & key-points** to note about the programming language are as follows:

- **Simple**: It is a simple language in the sense that programs can be broken down into logical units and parts, has a rich libray support and a variety of data-types.
- **Machine Independent but Platform Dependent**: A C++ executable is not platform-independent (compiled programs on Linux won’t run on Windows), however they are machine independent.
- **Mid-level language**: It is a mid-level language as we can do both systems-programming (drivers, kernels, networking etc.) and build large-scale user applications (Media Players, Photoshop, Game Engines etc.)
- **Rich library support**: Has a rich library support (Both standard ~ built-in data structures, algorithms etc.) as well 3rd party libraries (e.g. Boost libraries) for fast and rapid development.
- **Speed of execution**: C++ programs excel in execution speed. Since, it is a compiled language, and also hugely procedural. Newer languages have extra in-built default features such as grabage-collection, dynamic typing etc. which slow the execution of the program overall. Since there is no additional processing overhead like this in C++, it is blazing fast.
- **Pointer and direct Memory-Access**: C++ provides pointer support which aids users to directly manipulate storage address. This helps in doing low-level programming (where one might need to have explicit control on the storage of variables).
- **Object-Oriented**: One of the strongest points of the language which sets it apart from C. Object-Oriented support helps C++ to make maintainable and extensible programs. i.e. Large-scale applications ca be built. Procedural code becomes difficult to maintain as code-size grows.
- **Compiled Language**: C++ is a compiled language, contributing to its speed.


### Setting up C++ Development Environment: [Click here](https://www.geeksforgeeks.org/setting-c-development-environment/){:target="_blank"}


### Data Types

Data types in C++ is mainly divided into three types:

1. **Primitive Data Types**: These data types are built-in or predefined data types and can be used directly by the user to declare variables. example: int, char , float, bool etc. Primitive data types available in C++ are:
* **Integer**: Keyword used for integer data types is int. Integers typically requires 4 bytes of memory space and ranges from -2147483648 to 2147483647.
* **Character**: Character data type is used for storing characters. Keyword used for character data type is char. Characters typically requires 1 byte of memory space and ranges from -128 to 127 or 0 to 255.
* **Boolean**: Boolean data type is used for storing boolean or logical values. A boolean variable can store either true or false. Keyword used for boolean data type is bool.
* **Floating Point**: Floating Point data type is used for storing single precision floating point values or decimal values. Keyword used for floating point data type is float. Float variables typically requires 4 byte of memory space.
* **Double Floating Point**: Double Floating Point data type is used for storing double precision floating point values or decimal values. Keyword used for double floating point data type is double. Double variables typically requires 8 byte of memory space.
* **void**: Void means without any value. void datatype represents a valueless entity. Void data type is used for those function which does not returns a value.
* **Wide Character**: Wide character data type is also a character data type but this data type has size greater than the normal 8-bit datatype. Represented by wchar_t. It is generally 2 or 4 bytes long.
2. **Derived Data Types**: The data-types that are derived from the primitive or built-in datatypes are referred to as Derived Data Types. These can be of four types namely:
* **Function**: A function is a block of code or program-segment that is defined to perform a specific well-defined task. A function is generally defined to save the user from writing the same lines of code again and again for the same input. All the lines of code are put together inside a single function and this can be called anywhere required. main() is a default function that is defined in every program of C++.
* **Array**: An array is a collection of items stored at continuous memory locations. The idea of array is to represent many instances in one variable.
* **Pointer**: Pointers are symbolic representation of addresses. They enable programs to simulate call-by-reference as well as to create and manipulate dynamic data structures.
* **Reference**: When a variable is declared as reference, it becomes an alternative name for an existing variable. A variable can be declared as reference by putting ‘&’ in the declaration.
3. **Abstract or User-Defined Data Types**: These data types are defined by user itself. Like, defining a class in C++ or a structure. C++ provides the following user-defined datatypes:
* **Class**: The building block of C++ that leads to Object-Oriented programming is a Class. It is a user-defined data type, which holds its own data members and member functions, which can be accessed and used by creating an instance of that class. A class is like a blueprint for an object.
* **Structure**: A structure is a user defined data type in C/C++. A structure creates a data type that can be used to group items of possibly different types into a single type.
* **Union**: Like Structures, union is a user defined data type. In union, all members share the same memory location. For example in the following C program, both x and y share the same location. If we change x, we can see the changes being reflected in y.
* **Enumeration**: Enumeration (or enum) is a user defined data type in C. It is mainly used to assign names to integral constants, the names make a program easy to read and maintain.
* **Typedef defined DataType**: C++ allows you to define explicitly new data type names by using the keyword typedef. Using typedef does not actually create a new data class, rather it defines a name for an existing type. This can increase the portability(the ability of a program to be used across different types of machines; i.e., mini, mainframe, micro, etc; without much changes into the code)of a program as only the typedef statements would have to be changed. Using typedef one can also aid in self-documenting code by allowing descriptive names for the standard data types.

### Functions:
A function is a set of statements that take inputs, do some specific computation and produces output. The idea is to put some commonly or repeatedly done task together and make a function so that instead of writing the same code again and again for different inputs, we can call the function. A function declaration tells the compiler about the number of parameters function takes, data-types of parameters and return type of function. Putting parameter names in function declaration is optional in the function declaration, but it is necessary to put them in the definition. Below are an example of function declarations. (parameter names are not there in below declarations)

![Functions](functions.png)

```c++
// A function that takes two integers as parameters 
// and returns an integer 
int max(int, int); 
  
// A function that takes a int pointer and an int variable as parameters 
// and returns an pointer of type int 
int *swap(int*,int); 
  
// A function that takes a charas parameters 
// and returns an reference variable 
char *call(char b); 
  
// A function that takes a char and an int as parameters 
// and returns an integer 
int fun(char, int); 
```

### Arrays
An array in C or C++ is a collection of items stored at contiguous memory locations and elements can be accessed randomly using indices of an array. They are used to store similar type of elements as in the data type must be the same for all elements. They can be used to store collection of primitive data types such as int, float, double, char, etc of any particular type.

![Arrays](arrays.png)


```c++
int arr1[10];
// With recent C/C++ versions, we can also 
// declare an array of user specified size 
int n = 10; 
int arr2[n]; 

// Array declaration by initializing elements 
int arr[] = { 10, 20, 30, 40 } 
// Compiler creates an array of size 4. 
// above is same as  "int arr[4] = {10, 20, 30, 40}" 

// Array declaration by specifying size and initializing 
// elements 
int arr[6] = { 10, 20, 30, 40 }
// Compiler creates an array of size 6, initializes first 
// 4 elements as specified by user and rest two elements as 0. 
// above is same as  "int arr[] = {10, 20, 30, 40, 0, 0}" 
```

### Strings
Strings in C++ are used to store text or sequence of characters. In C++ strings can be stored in one of the two following ways:

* **C style string**: In C, strings are defined as an array of characters. The difference between a character array and a string is the string is terminated with a special character ‘\0’. In C, the string is actually represented as an array of characters terminated by a null string. Therefore the size of the character array is always one more than that of the number of characters in the actual string. This thing continues to be supported in C++ too. The C++ compiler automatically sets “\0” at the end of the string, during initialization of the array.
```
char str[] = "Geeks";
char str[6] = "Geeks";
char str[] = {'G', 'e', 'e', 'k', 's', '\0'};
char str[6] = {'G', 'e', 'e', 'k', 's', '\0'};
```
* **String class**: In C++, one can directly store the collection of characters or text in a string variable, surrounded by double-quotes. C++ provides string class, which supports various operations like copying strings, concatenating strings etc.
```
string str1 = "Geeks";
string str2 = "Welcome to GeeksforGeeks!";
```

### Pointers
Pointers are symbolic representation of addresses. They enable programs to simulate call-by-reference as well as to create and manipulate dynamic data structures. It’s general declaration in C/C++ has the format:
```
datatype *var_name; 
int *ptr;   //ptr can point to an address which holds int data
```

## Loops
### While loop
A while loop statement repeatedly executes a target statement as long as a given condition is true.
```
while(condition) {
   statement(s);
}
```
Here, statement(s) may be a single statement or a block of statements. The condition may be any expression, and true is any non-zero value. The loop iterates while the condition is true.

### For loop
A for loop is a repetition control structure that allows you to efficiently write a loop that needs to execute a specific number of times.
```
for ( init; condition; increment ) {
   statement(s);
}
```
Here is the flow of control in a for loop −

* The init step is executed first, and only once. This step allows you to declare and initialize any loop control variables. You are not required to put a statement here, as long as a semicolon appears.

* Next, the condition is evaluated. If it is true, the body of the loop is executed. If it is false, the body of the loop does not execute and flow of control jumps to the next statement just after the for loop.

* After the body of the for loop executes, the flow of control jumps back up to the increment statement. This statement can be left blank, as long as a semicolon appears after the condition.

* The condition is now evaluated again. If it is true, the loop executes and the process repeats itself (body of loop, then increment step, and then again condition). After the condition becomes false, the for loop terminates.

### Do...While loop
Unlike for and while loops, which test the loop condition at the top of the loop, the do...while loop checks its condition at the bottom of the loop. A do...while loop is similar to a while loop, except that a do...while loop is guaranteed to execute at least one time.
```
do {
   statement(s);
} 
while( condition );
```
Notice that the conditional expression appears at the end of the loop, so the statement(s) in the loop execute once before the condition is tested. If the condition is true, the flow of control jumps back up to do, and the statement(s) in the loop execute again. This process repeats until the given condition becomes false.

### Nested Loops:
A loop can be nested inside of another loop. C++ allows at least 256 levels of nesting.
The syntax for a nested for loop statement in C++ is as follows
```
for ( init; condition; increment ) {
   for ( init; condition; increment ) {
      statement(s);
   }
   statement(s); // you can put more statements.
}
```
The syntax for a nested while loop statement in C++ is as follows
```
while(condition) {
   while(condition) {
      statement(s);
   }
   statement(s); // you can put more statements.
}
```
The syntax for a nested do...while loop statement in C++ is as follows
```
do {
   statement(s); // you can put more statements.
   do {
      statement(s);
   } while( condition );

} while( condition );
```

### Break
The break statement has the following two usages in C++

* When the break statement is encountered inside a loop, the loop is immediately terminated and program control resumes at the next statement following the loop.

* It can be used to terminate a case in the switch statement (covered in the next chapter).

If you are using nested loops (i.e., one loop inside another loop), the break statement will stop the execution of the innermost loop and start executing the next line of code after the block.

```
break;
```

### Continue
The continue statement works somewhat like the break statement. Instead of forcing termination, however, continue forces the next iteration of the loop to take place, skipping any code in between.

For the for loop, continue causes the conditional test and increment portions of the loop to execute. For the while and do...while loops, program control passes to the conditional tests.
```
continue;
```

### Goto
A goto statement provides an unconditional jump from the goto to a labeled statement in the same function.

NOTE − Use of goto statement is highly discouraged because it makes difficult to trace the control flow of a program, making the program hard to understand and hard to modify. Any program that uses a goto can be rewritten so that it doesn't need the goto.


```
goto label;
..
.
label: statement;
```

Where label is an identifier that identifies a labeled statement. A labeled statement is any statement that is preceded by an identifier followed by a colon (:).

### Working with files
In C++, files are mainly dealt by using three classes fstream, ifstream, ofstream available in fstream headerfile.
* **ofstream**: Stream class to write on files
* **ifstream**: Stream class to read from files
* **fstream**: Stream class to both read and write from/to files.
To perform file processing in C++, header files <iostream> and <fstream> must be included in your C++ source file.

**Opening a file**
A file must be opened before you can read from it or write to it. Either ofstream or fstream object may be used to open a file for writing. And ifstream object is used to open a file for reading purpose only. Following is the standard syntax for open() function, which is a member of fstream, ifstream, and ofstream objects.
```
void open(const char *filename, ios::openmode mode);
```

| Sr.No | Mode Flag & Description |
| ----------- | ----------- |
| 1 | **ios::app** Append mode. All output to that file to be appended to the end. |
| 2 | **ios::ate** Open a file for output and move the read/write control to the end of the file. |
| 3 | **ios::in** Open a file for reading. |
| 4 | **ios::out** Open a file for writing. |
| 5 | **ios::trunc** If the file already exists, its contents will be truncated before opening the file. |
	
We can combine two or more of these values by ORing them together. For example if you want to open a file in write mode and want to truncate it in case that already exists, following will be the syntax −
```
ofstream outfile;
outfile.open("file.dat", ios::out | ios::trunc );
```
Similar way, you can open a file for reading and writing purpose as follows −
```
fstream  afile;
afile.open("file.dat", ios::out | ios::in );
```
**Closing a File**
When a C++ program terminates it automatically flushes all the streams, release all the allocated memory and close all the opened files. But it is always a good practice that a programmer should close all the opened files before program termination. Following is the standard syntax for close() function, which is a member of fstream, ifstream, and ofstream objects.
```
void close();
```
**Writing to a File**
While doing C++ programming, you write information to a file from your program using the stream insertion operator (<<) just as you use that operator to output information to the screen. The only difference is that you use an **ofstream** or **fstream** object instead of the **cout** object.

**Reading from a File**
You read information from a file into your program using the stream extraction operator (>>) just as you use that operator to input information from the keyboard. The only difference is that you use an **ifstream** or **fstream** object instead of the **cin** object.

More on Files: <a href="https://www.tutorialspoint.com/cplusplus/cpp_files_streams.htm"> Click here </a>

More on C++: <a href = "https://www.geeksforgeeks.org/cpp-tutorial/">Click here</a>
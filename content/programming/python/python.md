---
title: Python Programming
---


## About
Python is an interpreted, high-level, general-purpose programming language. Created by Guido van Rossum and first released in 1991, Python's design philosophy emphasizes code readability with its notable use of significant whitespace. Its language constructs and object-oriented approach aim to help programmers write clear, logical code for small and large-scale projects.

Python is dynamically typed and garbage-collected. It supports multiple programming paradigms, including procedural, object-oriented, and functional programming. Python is often described as a "batteries included" language due to its comprehensive standard library.

Python was conceived in the late 1980s as a successor to the ABC language. Python 2.0, released in 2000, introduced features like list comprehensions and a garbage collection system capable of collecting reference cycles. Python 3.0, released in 2008, was a major revision of the language that is not completely backward-compatible, and much Python 2 code does not run unmodified on Python 3.

## Data Types
There are several data types in Python. The main data types that we use most are string, integer, float, list, dict and tuple.

### String
Strings are usually created in one of three ways. We can use single, double or triple quotes.
```python
my_string = "Welcome to Python!"
another_string = 'The bright red fox jumped the fence.'
a_long_string = '''This is a
multi-line string. It covers more than
one line'''
```

There’s actually one other way to create a string and that is by using the str method. Here’s how it works:

```python
my_number = 123
my_string = str(my_number)
```

If you type the code above into your interpreter, you’ll find that you have transformed the integer value into a string and assigned the string to the variable my_string. This is known as casting. You can cast some data types into other data types, like numbers into strings. But you’ll also find that you can’t always do the reverse, such as casting a string like ‘ABC’ into an integer. If you do that, you’ll end up with an error like the one in the following example:

```python
int('ABC')
Traceback (most recent call last):
  File "<string>", line 1, in <fragment>
ValueError: invalid literal for int() with base 10: 'ABC'
```

Concatenation is a big word that means to combine or add two things together. In this case, we want to know how to add two strings together. As you might suspect, this operation is very easy in Python:
``` python
string_one = "My dog ate "
string_two = "my homework!"
string_three = string_one + string_two
```

String Slicing

Let’s take a look at how slicing works with the following string:
```python
my_string = "I like Python!"
```
Each character in a string can be accessed using slicing. For example, if I want to grab just the first character, I could do this:
```python
my_string[0:1]
```
This grabs the first character in the string up to, but not including, the 2nd character. Yes, Python is zero-based. It’s a little easier to understand if we map out each character’s position in a table:
```python
0 	1 	2 	3 	4 	5 	6 	7 	8 	9 	10 	11 	12 	13
I 	  	l 	i 	k 	e 	  	P 	y 	t 	h 	o 	n 	!
```
Thus we have a string that is 14 characters long, starting at zero and going through thirteen. Let’s do a few more examples to get these concepts into our heads better.
```python
my_string[:1]
'I'
my_string[0:12]
'I like Pytho'
my_string[0:13]
'I like Python'
my_string[0:14]
'I like Python!'
my_string[0:-5]
'I like Py'
my_string[:]
'I like Python!'
my_string[2:]
'like Python!'
```
As we can see from these examples, we can do a slice by just specifying the beginning of the slice (i.e. my_string[2:]), the ending of the slice (i.e. my_string[:1]) or both (i.e. my_string[0:13]). We can even use negative values that start at the end of the string. So the example where we did my_string[0:-5] starts at zero, but ends 5 characters before the end of the string.


More on Strings : <a href= "https://www.w3schools.com/python/python_strings.asp">Click here</a>

### Lists

A Python list is similar to an array in other languages. In Python, an empty list can be created in the following ways.
```python
my_list = []
my_list = list()
```
As we can see, we can create the list using square brackets or by using the Python built-in, list. A list contains a list of elements, such as strings, integers, objects or a mixture of types. Let’s take a look at some examples:
```python
my_list = [1, 2, 3]
my_list2 = ["a", "b", "c"]
my_list3 = ["a", 1, "Python", 5]
```
The first list has 3 integers, the second has 3 strings and the third has a mixture. You can also create lists of lists like this:
```python
my_nested_list = [my_list, my_list2]
my_nested_list
[[1, 2, 3], ['a', 'b', 'c']]
```

We can also sort a list. Let’s spend a moment to see how to do that:
```python
alpha_list = [34, 23, 67, 100, 88, 2]
alpha_list.sort()
alpha_list
[2, 23, 34, 67, 88, 100]
```
Let’s do one more example:
```python
alpha_list = [34, 23, 67, 100, 88, 2]
sorted_list = alpha_list.sort()
sorted_list
print(sorted_list)
None
```
In this example, we try to assign the sorted list to a variable. However, when we call the sort() method on a list, it sorts the list in-place. So if we try to assign the result to another variable, then we’ll find out that we’ll get a None object, which is like a Null in other languages. Thus when we want to sort something, just remember that we sort them in-place and we cannot assign it to a different variable.

We can slice a list just like you do with a string:
```python
alpha_list[0:3]
[2, 23, 34]
```
This code returns a list of just the first 3 elements.


### Tuples

A tuple is similar to a list, but we create them with parentheses instead of square brackets. We can also use the tuple built-in. The main difference is that a tuple is immutable while the list is mutable. Let’s take a look at a few examples:
```python
my_tuple = (1, 2, 3, 4, 5)
my_tuple[0:3]
(1, 2, 3)
another_tuple = tuple()
abc = tuple([1, 2, 3])
```
The code above demonstrates one way to create a tuple with five elements. It also shows that we can do tuple slicing. However, we cannot sort a tuple! The last two examples shows how to create tuples using the tuple keyword. The first one just creates an empty tuple whereas the second example has three elements inside it. Notice that it has a list inside it. This is an example of casting. We can change or cast an item from one data type to another. In this case, we cast a list into a tuple. If we want to turn the abc tuple back into a list, we can do the following:
```python
abc_list = list(abc)
```
To reiterate, the code above casts the tuple (abc) into a list using the list function.


### Dictionaries

A Python dictionary is basically a hash table or a hash mapping. In some languages, they might be referred to as associative memories or associative arrays. They are indexed with keys, which can be any immutable type. For example, a string or number can be a key. We need to be aware that a dictionary is an unordered set of key:value pairs and the keys must be unique. We can get a list of keys by calling a dictionary instance’s keys method. To check if a dictionary has a key, you can use Python’s "in" keyword. In some of the older versions of Python (2.3 and older to be specific), you will see the has_key keyword used for testing if a key is in a dictionary. This keyword is deprecated in Python 2.x and removed entirely from Python 3.x.

Let’s take a moment to see how we create a dictionary.
```python
my_dict = {}
another_dict = dict()
my_other_dict = {"one":1, "two":2, "three":3}
my_other_dict
{'three': 3, 'two': 2, 'one': 1}
```

The first two examples show how to create an empty dictionary. All dictionaries are enclosed with curly braces. The last line is printed out so we can see how unordered a dictionary is. Now it’s time to find out how to access a value in a dictionary.
```python
my_other_dict["one"]
1
my_dict = {"name":"Mike", "address":"123 Happy Way"}
my_dict["name"]
'Mike'
```
In the first example, we use the dictionary from the previous example and pull out the value associated with the key called “one”. The second example shows how to acquire the value for the “name” key. Now let’s see how to tell if a key is in a dictionary or not:
```python
"name" in my_dict
True
"state" in my_dict
False
```
So, if the key is in the dictionary, Python returns a Boolean True. Otherwise it returns a Boolean False. If we need to get a listing of all the keys in a dictionary, then we do this:
```python
my_dict.keys()
dict_keys(['name', 'address'])
```

In Python 2, the keys method returns a list. But in Python 3, it returns a view object. This gives the developer the ability to update the dictionary and the view will automatically update too. Also note that when using the in keyword for dictionary membership testing, it is better to do it against the dictionary instead of the list returned from the keys method. See below:
```python
"name" in my_dict         # this is good
"name" in my_dict.keys()  # this works too, but is slower
```
---
title: Perl Programming
---



## About

Perl is the Swiss Army chainsaw of scripting languages: powerful and adaptable. It was first developed by Larry Wall, a linguist working as a systems administrator for NASA in the late 1980s, as a way to make report processing easier. Since then, it has moved into a large number of roles: automating system administration, acting as glue between different computer systems; and, of course, being one of the most popular languages for CGI programming on the Web.

## Perl Installation into your machine

Perl - <a href = "https://www.perl.org/get.html"> Click here to download</a>

Choose Operating System and Download the required version.

## Data Types 
Perl has three data types: scalars, arrays and hashes

Scalars are single things. This might be a number or a string. The name of a scalar begins with `$`.
```perl
$a = 5
```
Arrays are lists of scalars organized by position. Array names begin with`@`. You define arrays by listing their contents in parentheses, separated by commas.
```perl
@b = (1,2,3)
```
To access an element of an array, you replace the `@` sign with a `$` sign and use the indexing operator `[ ]` with the position of the element you want. (It begins with a dollar sign because you’re getting a scalar value.) You can also modify it in place, just like any other scalar.
```perl
$z = @b[0]
```
Hashes are called "dictionaries" in some programming languages, and that’s what they are: a term and a definition, or in more correct language a key and a value. Each key in a hash has one and only one corresponding value. The name of a hash begins with a percentage sign, like %parents. You define hashes by comma-separated pairs of key and value.
You can fetch any value from a hash by referring to $hashname{key}, or modify it in place just like any other scalar.
```perl
print "Hello Wolrd\n";

$a = 5;                        				# define and initialize scalar a

print $a . "\n";				

@b = (1,2,3);						# define and initialize array b
print $b[0] . "\n";					# access array value at position 0 with indexing operator []

%c = (" Mike" => "Jonas", "Miheala" => "Sabin");	# define and initialize hash c
print $c{"Mike"} . "\n";				# access hash value by key "Mike" with operator {}

$d{"Wolf"} = "Blitzer";					# define new hash d with value "Blitzer" at key "Wolf"
print $d{"Wolf"} . "\n";					

$last = "Jonas";						
if ( "$last" == $c{"Mike"})				#comparing operator '=='
{
  print "They match!\n";
} 
else
{
 print "They dont!\n";
}


print "Please enter your name?";
$name = <STDIN>;					# Getting Input from User and saving in a scalar $name
print $name . "\n";											
	

open (FILE, "perl_basics") or die "Couldn't find file"; #opening file    
while (<FILE>)
{
 print "$_";						#printing values to terminal
}
```

The difference between single quotes and double quotes is that single quotes mean that their contents should be taken literally, while double quotes mean that their contents should be interpreted. 
For example, the character sequence \n is a newline character when it appears in a string with double quotes, but is literally the two characters, backslash and n, when it appears in single quotes.
#### awk:  
- Used mostly for the structured text data.  
Usage:  
```
awk '/pattern/ { print $column }' file_name
```
- pattern: what should be executed
- action: what action should be done when pattern is matched.
- Fields: $1, $2, ... are the respective first and second fields.
- Delimiters: fields are separated by whitespaces (defualt) and can also be customized.

```
awk -F, '{ print $column }' file_name
```
Built-in variables:  
- NR: Current line number or number of lines processed.
- NF: Number of fields.
- $0: Entire current line.
```
awk '{ print NR, NF, $0 }' file_name
```
Arithematic & Logical Operators:  
- supports all operations of both numeric and strings.
```
awk '{ if ($1 > 10) print $1 }' file_name
```

Built-in functions:  
- Length of a string. Here, $0/string indicates the complete current line.
```
awk '{ print length($0) }' file_name
```
- Returns a substring. Here, $0/string indicates the complete current line.
```
awk '{ print substr($0, start, length) }' file_name
```
- Returns an integer of a decimal number. Here, $1 indicates the first column.
```
awk '{ print $1, int($1) }' file_name
```
- Returns the index of a substring.
```
awk '{ print index($0, "substring_to_be_searched") }' file_name
```
- Splits a string into an array.
```
awk '{ 
    split($0, array_name, separator);
    for (i = 1; i <= length(array_name); i++) {
        print "Element " i ": " array_name[i];
    }
 }' file_name
```
- Returns a random number between [0,1) i.e; pesudo-random floating point numbers.
```
awk 'BEGIN { for (i = 1; i <= count; i++) print rand() }'
```
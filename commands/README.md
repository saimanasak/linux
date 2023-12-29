#### awk:  
- Used mostly for the structured text data.  
Usage:  
```
awk '/pattern/ { print $column }' file_name
```
- pattern: what should be executed
- action: what action should be done when pattern is matched.
- fields: $1, $2, ... are the respective first and second fields.
- delimiters: Delimiters separates the fields. Fields are separated by whitespaces (defualt) and can also be customized.

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
Formatting Output:  
```
awk '{ printf "Attribute1: %-10s Attribute2: %d\n", $Argument1, $Argument2 }' file_name
```
- %d: Decimal 
- %s: String
- %c: Character 
- %f: Floating-point character
- Modifiers:  
    - width modifier (w): Minimum width of the field, just spaces are added.
    ```
    awk '{ printf "Attribute: %10s\n", $Argument1 }' file_name
    ```
    - Precision modifier (.n): Used for floating-point numbers.
    ```
    awk '{ printf "Attribute: %.2f\n", $Argument1 }' file_name
    ```
    - Left justify modifier (-): Left justified with a minimum specified width.
    ```
    awk '{ printf "Attribute: %-10s\n", $Argument1 }' file_name
    ```
    - Zero padding modifier (0): Zeros instead of spaces.
    ```
    awk '{ printf "Attribute: %05d\n", $Argument1 }' file_name
    ```
    - Sign modifier (+ & ''): Forces a + sign and a space.
    ```
    awk '{ printf "Attribute: %+d\n", $Argument1 }' file_name
    awk '{ printf "Attribute: % d\n", $Argument1 }' file_name
    ```
BEGIN & END blocks:  
```
BEGIN { 
    initializing variables
    conditions
    other tasks that need to be done before processing input lines
}
END {
    finalizing computations
    prints summary info
    performing cleanup tasks
}

```
```
awk 'BEGIN { print "Start of File" } { print $argument } END { print "End of File" }' file_name
```
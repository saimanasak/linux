# Shell Script  
1. [ Interpreters ](#Interpreters)
2. [ Comments ](#comments)

<a name="Interpreters"></a>
##### Shell Interpreters  
sh 
bash 
ash 
ksh 
dash 
zsh 
csh 
tcsh 
 
--------------------------------  
  
#!/bin/bash - Shebang/Hashbang  
#! - Shebang, indicates the path to the interpreter where the script should be executed  
/bin/bash - Path to the interpreter  

--------------------------------  
<a name="comments"></a>
##### Comments:

#- Single line comment  
#
#- Multi line comment  
:<<COMMENT  
...........
COMMENT - Multi line block comment  

---------------------------------

##### Saving a script:

###### "nano" editor  
        nano scriptname.sh  
        write the script  
        Ctrl+O and Enter  
        Ctrl+X and Enter

###### "vim or vi" editor  
        vim scriptname.sh or vi scriptname.sh  
        write the script  
        Esc  
        :wq!  
            w - write/save the changes to the script  
            q - quit  
            ! - force operation(should be done with caution)  

###### Scripting IDE or Text editor:  
        create a script file  
        write  
        save the script using option in editor  

----------------------------------

##### Ways to execute a script:

###### Using the path
        ./scriptname.sh  
###### Using the absolute path 
        /path/to/scriptname.sh  
####### Add the script to the path and run      
        export PATH=$PATH:/path/to  
        scriptname.sh  
###### Using sh 
        sh scriptname.sh  
###### Using bash 
        bash scriptname.sh  

------------------------------------

##### "for" loop:  

1. Using range:  
```
for i in {1..n};   
do
    ***action***  
done  
```
```
for i in 1 2 3 .. n   
do
    ***action***  
done  
```
```
for i in {1..n..increment};   
do
    ***action***  
done  
```
2. Using sequence:  
```
for i in ${seq 1 n};  
do
    ***action***  
done  
```
3. Using command substitution:   
```
for file in $(ls);  
do
    ***action***  
done  
```
4. Using arrays:   
```
for i in "${array_name[@]}";  
do
    ***action***  
done  
```
5. Using list:  
```
for i in element0 element1 element2;   
do
    ***action***  
done  
```
6. Using "C" style:  
```
for ((i = 1; i <= n: i++));   
do
    ***action***  
done  
```

--------------------------------

##### "if" statement:  
```
if [ condition ]; then
        ***action***
else
        ***action***
fi
```
```
if [ condition ]; then
        ***action***
elif [ condition ]; then
        ***code***
else
        ***action***
fi
```
```
if [ condition1 ] || [ condition2 ]; then
    ***action***
else
    ***action***
fi
```
```
if [ condition1 ] && [ condition2 ]; then
    ***action***
else
    ***action***
fi
```

--------------------------------

##### Arrays:

Declaration:
        1. array_name=("element0" "element1" "element2")

        2. array_name[0]="element0"  
           array_name[1]="element1"  
           array_name[2]="element2"  

        3. To declare an array explicitly - declare -a array_name  
           TO declare an array implicitly - declare array_name  

        4. Using typeset - typeset -a array_name    
                           typeset array_name  
Accessing:
        1. All the elements: ${array_name[@]}  

        2. Individual elements: ${array_name[0]} 

Length:  
```
array_length=${#array_name[@]}
```
Adding an element:  
```
array_name+=( "new_element" )
```
Removing an element:  
```
unset array_name[index_to_be_removed]
```
Iteration:  
```
for element in "${array_name[@]}";
do
    ***action***
done
```
Slicing:  
```
sliced_array=("${array_name[@]:start_index:slice_length}")
```
Checking an element:  
```
[[ " ${array_name[@]} " =~ " element_to_be_checked " ]]
```
- This is case-sensitive, so for this we can use 'nocasematch' option.
```
shopt -s nocasematch
shopt -u nocasematch #Resets to defualt
```
Copying:  
```
copied_array=("${array_name[@]}")
```
Concatenation:  
```
concatenated_array=("${array_name1[@]}" "${array_name2[@]}")
```
--------------------------------------

##### Associated Arrays:  
Declaration:
```
delcare -A associative_array

associative_array["element0"]="value0"
associative_array["element1"]="value1"
associative_array["element2"]="value2"
```
Accessing:  
```
"${associative_array["element"]}"
```
Iteration: 
``` 
for element in "${!associative_array[@]}";
do
    ***action***
done
```

--------------------------------------

##### Strings:  

Usage:  
1. Single quotes:  
```
my_string='Hello World'
```
2. Double quotes:  
```
my_string="Hello World"
```
3. No quotes:  
```
my_string=Hello
```
Variable Substitution:  
- During the variable substitution we have to use only double quotes for the echo command.
```
name='manasa'
echo "Hello $name"
```
Concatenation:  
```
concatenated_string="${string1} ${string2}"
```
Length:  
```
string_length=${#str_variable}

string_length=$(expr length "$str_variable")
```
Comparison:  
```
"$string1" == "$string2"
```
Substring:  
```
substring="${#str_variable:start:length}"
```
Lowercase & Uppercase:  
```
lowercase="${str_variable,,}"
uppercase="${str_variable^^}"
```
Replacement:  
```
replaced_string="${original_string/substring_to_be_replaced/new_substring}"
```
Removal:  
- '#' and '##' removes from the beginning till the given substring; shortest and longest.  
- '%' and '%%' removes from the end till the given substring; shortest and longest.  
- The difference between the output of shortest and longest can be observed when there are multiple occurences of a pattern in the string.  
```
prefix="${str_variable#*pattern}"
longest_prefix="${str_variable##*pattern}"

suffix="${str_variable%pattern*}"
longest_suffix="${str_variable%%pattern*}"
```

------------------------------

##### "case" statement:  

```
case $variable in
        pattern1)
                ***action***
                ;;
        pattern2)
                ***action***
                ;;
        pattern3)
                ***action***
                ;;
        *)
                ***action***
                ;;
esac
```

---------------------------------

##### Functions:  

Declaration:  
```
function function_name() 
{
        ***action***
}
```

Calling:
```
function_name

function_name "arguments"

variable=$(function_name arguments)
```

-----------------------------------

##### Files:  

Reading:  
```
file_path="..."
if [ -e "$file_path" ]; then
    ***action***
else
    ***action***
fi
```
Writing:  
```
file_path="..."

#Writes data to a file.
echo "some_text" > "$file_path"

#Appends data to a file.
echo "some_text" >> "$file_path"
```
Checking the file:  
```
[ -e "$file_path" ]
```
- '-e' checks if the specified file or directory present.
- '-f' checks if the path is regular file.
- '-d' checks if the path is a directory.
- '-r', '-w', '-x' readable, writable, and executable respectively.

Checking type of file:  
```
file_type=$(file -b "file_to_be_checked")
```
Iteration:  
```
for file in "$directory_path"/*;
do
    ***action***
done

--------------------------------

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
##### Comments:

#- Single line comment  
#
#- Multi line comment  
:<<COMMENT  
...........
COMMENT - Multi line block comment  

---------------------------------

##### Saving a script:

1. "nano" editor  
        nano scriptname.sh  
        write the script  
        Ctrl+O and Enter  
        Ctrl+X and Enter

2. "vim or vi" editor  
        vim scriptname.sh or vi scriptname.sh  
        write the script  
        Esc  
        :wq!  
            w - write/save the changes to the script  
            q - quit  
            ! - force operation(should be done with caution)  

3. Scripting IDE or Text editor:  
        create a script file  
        write  
        save the script using option in editor  

----------------------------------

##### Ways to execute a script:

1. Using the path - ./scriptname.sh  
2. Using the absolute path - /path/to/scriptname.sh  
3. Add the script to the path and run -    
        export PATH=$PATH:/path/to  
        scriptname.sh  
4. Using sh - sh scriptname.sh  
5. Using bash - bash scriptname.sh  

------------------------------------

##### Arrays:

###### Declaration:
        1. array_name=("element0" "element1" "element2")  
        2. array_name[0]="element0"  
           array_name[1]="element1"  
           array_name[2]="element2"  
        3. To declare an array explicitly - declare -a array_name  
           TO declare an array implicitly - declare array_name  
        4. Using typeset - typeset -a array_name    
                           typeset array_name  
###### Accessing:
        1. All the elements: ${array_name[@]}  
        2. Individual elements: ${array_name[0]} 

--------------------------------------

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

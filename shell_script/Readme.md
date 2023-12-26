###### Shell Interpreters  
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
###### Comments:

#- Single line comment  

#
#- Multi line comment  

:<<COMMENT  
...........
COMMENT - Multi line block comment  

---------------------------------

###### Saving a script:

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

###### Ways to execute a script:

1. Using the path - ./scriptname.sh  
2. Using the absolute path - /path/to/scriptname.sh  
3. Add the script to the path and run -    
        export PATH=$PATH:/path/to  
        scriptname.sh  
4. Using sh - sh scriptname.sh  
5. Using bash - bash scriptname.sh  

------------------------------------
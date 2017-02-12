#### Terminal color Configuration  
XTerm & URxvt support 256color. Only the first 16 can be changed using resources currently, the rest can only be changed via command sequences ("escape codes").  
   
'tput' command can initialize a terminal or query terminfo database.  
To query the terminal support colors' types:  
&emsp;`tput colors`  
it will output a number like 8,16,88,256.  
  
To change the terminal background/foreground temporaily:  
&emsp;`tput setab/setaf`  
or    
&emsp;`tput setb/setf`  
NOTE:Only `tput setab/setaf` can work in XTerm.  
  
If you want to change the terminal's color configuration,there is [a bash script]( https://github.com/philosophos/show256color)  I wrote,which can show 256color in terminal.  
  
#### URxvt Font Configurtion  
If you want to test font configuration,here is [a bash script](https://github.com/philosophos/Xresources/blob/master/fc-test.sh) I wrote,it can test all kinds of font in `fc-list` on urxvt, and screenshot for you choice.The screenshot name is `serial-num+font-name.png`,and all the screenshots are saved in `~/pictures/shots/font-test-urxvt`.  
  
#### xtermcontrol  
Dynamic control of xterm properties,such as colors,title,font,geomtry.  
[HomePage](http://thrysoee.dk/xtermcontrol)  
[GitHub](https://github.com/JessThrysoee/xtermcontrol)  

#### Terminal color Configuration  
XTerm & URxvt support 256color. Only the first 16 can be changed using resources currently, the rest can only be changed via command sequences ("escape codes").  

>From man console_codes  
  
    It  is  generally not good practice to hard-wire terminal controls into
    programs.  Linux supports a terminfo(5) database of terminal  capabili‐
    ties.   Rather than emitting console escape sequences by hand, you will
    almost always want to use a terminfo-aware screen  library  or  utility
    such as ncurses(3), tput(1), or reset(1).
  

'tput' command can initialize a terminal or query terminfo database.  
  
To query the terminal support colors' types:  
&emsp;`tput colors`  
it will output a number like 8,16,88,256.  
  
To change the current foreground/background color on a terminal:  
&emsp;`tput setf <256-color-code>`  
&emsp;`tput setb <256-color-code>`  
&emsp;`tput setaf <256-color-code>`  
&emsp;`tput setab <256-color-code>`  
NOTE:Only `tput setab/setaf <256-color-code>` can work in XTerm.  
For example:  
&emsp;`tput setaf 255;tput setaf 231;echo 'Microsoft gives you windows;Linux gives you a world'`  
It will print the sentence in color255 as foreground and color231 as background.  
  
If you want to change the terminal's color configuration,there is [a bash script]( https://github.com/philosophos/show256color)  I wrote,which can show 256color in terminal.  
  
#### URxvt Font Configurtion  
If you want to test font configuration,here is [a bash script](https://github.com/philosophos/Xresources/blob/master/fc-test.sh) I wrote,it can test all kinds of font in `fc-list` on urxvt, and screenshot for you choice.The screenshot name is `serial-num+font-name.png`,and all the screenshots are saved in `~/pictures/shots/font-test-urxvt`.  
  
#### xtermcontrol  
Dynamic control of xterm properties,such as colors,title,font,geomtry.  
[HomePage](http://thrysoee.dk/xtermcontrol)  
[GitHub](https://github.com/JessThrysoee/xtermcontrol)  

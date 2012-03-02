# screenrunner #

A set of shell scripts to run customised short .screenrc files in conjuction with a main .screenrc, as well as 'providing' arguments to said screenrc files

## Requirements ##

A bash shell, GNU [screen](http://www.gnu.org/s/screen/ ) terminal multiplexer, a desire for simplified screen-ing

## Provided ##

* scrrnr - The main script, responsible for invoking screen and doing the screenrc 'magic'

* scrcmd - A (very) simple script to pass screen commands to a running screen instance

* bashrnr - Allows a user to run some commands in a bash shell and keep it open interactively

* screenrc-ex1 - Example of my own personal .screenrc

* screenrc/* - A few examples of some custom window setups

## Setup ##

`git://github.com/jsutlovic/screenrunner.git  
cd screenrunner  
./installer.sh  
scrrnr tester`


## Examples ##

`scrrnr tester 1 2 3 4 5`

`scrrnr admin`


### Why? ###

I needed something to facilitate simple seperation of .screenrc sessions and allow for parameter substitution in them.  
[byobu](https://launchpad.net/byobu ) almost fit the bill, but it doesn't seem to do parameter substitution, nor does it have a simple way to run an interactive shell with multiple commands, so I wrote my own


That is all, *for now*.

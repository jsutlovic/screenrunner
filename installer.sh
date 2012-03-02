#!/usr/bin/env bash

## Setup script for screenrunner
##  Install main scripts into $HOME/bin, creating if it doesn't exist,
##  Copy 

if [ ! -d "$HOME/bin" ]; then
	mkdir -p $HOME/bin
fi

cp -t $HOME/bin scrrnr scrcmd bashrnr

if [ -f "$HOME/.screenrc" ]; then
	mv $HOME/.screenrc $HOME/.screenrc.bak
fi

if [ -d "$HOME/.screen" ]; then
	mv $HOME/.screen $HOME/.screen-bak
fi

if echo "$PATH" | grep "$HOME/bin" > /dev/null; then
	echo -e "Looks like you're good to go!"
else
	echo "All installed!"
	echo "Looks like you're missing $HOME/bin in your \$PATH"
	echo "Fix that by adding the line:"
	echo "PATH=\"\$HOME/bin:\$PATH\""
	echo "into your \$HOME/.bashrc"
	
	PATH="$HOME/bin:$PATH"
fi

echo -e "Try starting with:\nscrrnr tester"

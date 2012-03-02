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

cp screenrc-ex1 $HOME/.screenrc

if [ -d "$HOME/.screen" ]; then
	mv $HOME/.screen $HOME/.screen-bak
fi

cp -R screenrc $HOME/.screen

if echo "$PATH" | grep "$HOME/bin" > /dev/null; then
	echo -e "Looks like you're good to go!"
	echo -e "Try starting with:\n\nscrrnr tester"
else
	echo "All installed!"
	echo "Looks like you're missing $HOME/bin in your \$PATH"
	echo "Fix that by adding the line:"
	echo ""
	echo "PATH=\"\$HOME/bin:\$PATH\""
	echo ""
	echo "into your \$HOME/.bashrc"
	echo ""
	echo "Then open up a new terminal and try:"
	echo "scrrnr tester"
fi


#!/usr/local/bin/bash

# Notes: ----------------------------------------------------------
# When you start an interactive shell (log in, open terminal or iTerm in OS X, 
# or create a new tab in iTerm) the following files are read and run, in this order:
#     profile
#     bashrc
#     .bash_profile
#     .bashrc (only because this file is run (sourced) in .bash_profile)
#
# When an interactive shell, that is not a login shell, is started 
# (when you run "bash" from inside a shell, or when you start a shell in 
# xwindows [xterm/gnome-terminal/etc] ) the following files are read and executed, 
# in this order:
#     bashrc
#     .bashrc
##

# See following for more information: http://www.infinitered.com/blog/?p=19

# Path ------------------------------------------------------------
export PATH=/usr/local/bin:$PATH

if [ -d ~/bin ]; then
	export PATH=:~/bin:$PATH  # add your bin folder to the path, if you have it.  It's a good place to add all your scripts
fi

# Load in .bashrc -------------------------------------------------
source ~/.bashrc

# Hello Messsage --------------------------------------------------
# -e is not supported in osx so I removed it.
echo "Kernel Information: " `uname -smr`
echo "$(tput setaf 4)`bash --version`$(tput sgr0)"
echo -ne "$(tput setaf 5)Uptime: "; uptime
echo -ne "$(tput setaf 5)Server time is: "; date
echo -ne "$(tput sgr0)"




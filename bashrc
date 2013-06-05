# Meant for /etc/bashrc

# Terminal colors
export CLICOLOR=1 
export LSCOLORS=GxFxCxDxBxegedabagaced

# ATA stuff
function cds() {
    cd $(/var/ata/tools/checkout_package -a squid --pathfor $@);
}

# System-wide .bashrc file for interactive bash(1) shells.
if [ -z "$PS1" ]; then
   return
fi

PS1='\h:\W \u\$ '
# Make bash check its window size after a process completes
shopt -s checkwinsize
# Tell the terminal about the working directory at each prompt.
if [ "$TERM_PROGRAM" == "Apple_Terminal" ] && [ -z "$INSIDE_EMACS" ]; then
    update_terminal_cwd() {
        # Identify the directory using a "file:" scheme URL,
        # including the host name to disambiguate local vs.
        # remote connections. Percent-escape spaces.
	local SEARCH=' '
	local REPLACE='%20'
	local PWD_URL="file://$HOSTNAME${PWD//$SEARCH/$REPLACE}"
	printf '\e]7;%s\a' "$PWD_URL"
    }
    PROMPT_COMMAND="update_terminal_cwd; $PROMPT_COMMAND"
fi
								    
# show git branch
__git_ps1 () {
    local b="$(git symbolic-ref HEAD 2>/dev/null)";
    if [ -n "$b" ]; then
        printf " [%s]" "${b##refs/heads/}";
    fi
}

prompt_command() {
    # if root
    if [ $(id -u) -eq 0 ];
    then
        PS1="\[$(tput setaf 3)\][\@]\[$(tput sgr0)\] \u@\h:\[$(tput setaf 4)\]\w\[$(tput sgr0)\]\[$(tput setaf 2)\]$(__git_ps1)\[$(tput sgr0)\]# "
    else
        PS1="\[$(tput setaf 3)\][\@]\[$(tput sgr0)\] \u@\h:\[$(tput setaf 4)\]\w\[$(tput sgr0)\]\[$(tput setaf 2)\]$(__git_ps1)\[$(tput sgr0)\]$ "
    fi


    if [ -z "$VIRTUAL_ENV_DISABLE_PROMPT" ] ; then
        if [ "$VIRTUAL_ENV" ]; then
            PS1="(`basename \"$VIRTUAL_ENV\"`) $PS1"
        fi
    fi

    export PS1
}

PROMPT_COMMAND=prompt_command

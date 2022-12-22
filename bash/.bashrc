#Ibus settings if you need them
#type ibus-setup in terminal to change settings and start the daemon
#delete the hashtags of the next lines and restart
#export GTK_IM_MODULE=ibus
#export XMODIFIERS=@im=dbus
#export QT_IM_MODULE=ibus
PS1='[\u@\h \W]\$ '

# Carregar as configurações do shell
if [ -f $HOME/.shellrc ]; then
  source $HOME/.shellrc
fi

# Configuração do Anaconda 3
__conda_setup="$('/home/narcisista/anaconda3/bin/conda' 'shell.bash' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/home/narcisista/anaconda3/etc/profile.d/conda.sh" ]; then
        . "/home/narcisista/anaconda3/etc/profile.d/conda.sh"
    else
        export PATH="/home/narcisista/anaconda3/bin:$PATH"
    fi
fi
unset __conda_setup

# shopt
shopt -s autocd # change to named directory
shopt -s cdspell # autocorrects cd misspellings
shopt -s cmdhist # save multi-line commands in history as single line
shopt -s dotglob
shopt -s histappend # do not overwrite history
shopt -s expand_aliases # expand aliases

# ignore upper and lowercase when TAB completion
bind "set completion-ignore-case on"

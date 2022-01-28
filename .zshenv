# Function from: https://superuser.com/questions/39751/add-directory-to-path-if-its-not-already-there
pathappend() {
    for ARG in "$@"; do
        if [ -d "$ARG" ] && [[ ":$PATH:" != *":$ARG:"* ]]; then
            PATH="${PATH:+"$PATH:"}$ARG"
        fi
    done
}

# Function from: https://superuser.com/questions/39751/add-directory-to-path-if-its-not-already-there
pathprepend() {
    # for ((i=$#; i>0; i--));
    for ARG in "$@"; do
        # ARG=${!i} # This part only works in bash...
        if [ -d "$ARG" ] && [[ ":$PATH:" != *":$ARG:"* ]]; then
            PATH="$ARG${PATH:+":$PATH"}"
        fi
    done
}

# GTK
export GTK_THEME=Adwaita:dark

# PATH
pathappend "/var/lib/flatpak/exports/bin"
pathprepend "$HOME/bin"
pathprepend "$HOME/.local/bin"

# .NET config
export DOTNET_ROOT=/usr/share/dotnet
export DOTNET_CLI_TELEMETRY_OPTOUT=true
pathappend "/home/wellington/.dotnet/tools"

# General
export TERM=alacritty
export BROWSER=firefox
export MAIL=thunderbird
export EDITOR=nvim

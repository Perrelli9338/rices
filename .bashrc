# .bashrc

# .NET SDK Configuration
export DOTNET_ROOT="/usr/share/dotnet"
export DOTNET_CLI_TELEMETRY_OPTOUT=1 # Disable analytics
export DOTNET_ROLL_FORWARD_TO_PRERELEASE=1

# Add the .NET SDK to the system paths so we can use the `dotnet` tool.
export PATH="$DOTNET_ROOT:$PATH"
export PATH="$DOTNET_ROOT/sdk:$PATH"
export PATH="$HOME/.dotnet/tools:$PATH"

# Run this if you ever run into errors while doing a `dotnet restore`
alias nugetclean="dotnet nuget locals --clear all"

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias zed='zeditor'
alias ls='ls --color=auto'
PS1='[\u@\h \W]\$ '
export PATH="$HOME/.local/bin:$PATH"
export PATH="$HOME/Downloads/flutter/bin:$PATH"
export PATH="$HOME/Documents/flutter/bin:$PATH"
export PATH="$HOME/Android/Sdk/platform-tools:$PATH"
export LIBVIRT_DEFAULT_URI="qemu:///system"
alias gamescope="SDL_VIDEODRIVER=x11 gamescope --backend sdl"




#import a few dotfiles
source ~/githubworkspace/dotfiles/spread

# TOTVS
export MDM_REPO=/Users/brunovolpato/githubworkspace/mdm
export MDM_QA_REPO=/Users/brunovolpato/githubworkspace/mdmqa
export TOTVSLABS_FRAMEWORK_REPO=/Users/brunovolpato/githubworkspace/totvslabs-framework
export IDM_REPO=/Users/brunovolpato/githubworkspace/identity/idm
source ~/shared/.spread

test -e "${HOME}/.iterm2_shell_integration.bash" && source "${HOME}/.iterm2_shell_integration.bash"

export ECLIPSE_HOME=~/Desktop/Eclipse-Neon-M7.app/Contents/Eclipse
export ANDROID_HOME=/Users/brunovolpato/Library/Android/sdk
export CUDA_HOME=/usr/local/cuda
export DYLD_FALLBACK_LIBRARY_PATH="$CUDA_HOME/lib:/usr/local/lib:/usr/lib:/Developer/NVIDIA/CUDA-7.5/lib"
export DYLD_LIBRARY_PATH="/usr/local/cuda/lib:/Developer/NVIDIA/CUDA-7.5/lib:$DYLD_LIBRARY_PATH"

export FASTTHREAD_TOKEN=$(cat ~/Dropbox/Bruno/fastthread_token.txt)

##
# Your previous /Users/brunovolpato/.bash_profile file was backed up as /Users/brunovolpato/.bash_profile.macports-saved_2016-04-27_at_22:06:15
##

# MacPorts Installer addition on 2016-04-27_at_22:06:15: adding an appropriate PATH variable for use with MacPorts.
export PATH="$DYLD_LIBRARY_PATH:/opt/local/bin:/opt/local/sbin:$PATH"
# Finished adapting your PATH environment variable for use with MacPorts.

# Virtualenv/VirtualenvWrapper
source /usr/local/bin/virtualenvwrapper.sh

export PATH="$ANDROID_HOME/tools:$ANDROID_HOME/platform-tools:$PATH"


#THIS MUST BE AT THE END OF THE FILE FOR SDKMAN TO WORK!!!
export SDKMAN_DIR="${HOME}/.sdkman"
[[ -s "${HOME}/.sdkman/bin/sdkman-init.sh" ]] && source "${HOME}/.sdkman/bin/sdkman-init.sh"


eval "$(thefuck --alias)"
eval $(/usr/libexec/path_helper -s)

GPG_TTY=$(tty)
export GPG_TTY


if [ -f `which powerline-daemon` ]; then
    powerline-daemon -q
    POWERLINE_BASH_CONTINUATION=1
    POWERLINE_BASH_SELECT=1

    powerline_path=$(python -c 'import pkgutil; print pkgutil.get_loader("powerline").filename' 2>/dev/null)
    if [[ "$powerline_path" != "" ]]; then
        source ${powerline_path}/bindings/bash/powerline.sh
    fi
fi

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*
source ~/.profile


export NVM_DIR="$HOME/.nvm"
. "/usr/local/opt/nvm/nvm.sh"

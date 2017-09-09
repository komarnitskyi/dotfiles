# aliasess

# navigation
alias gop "cd ~/projects/_projects"
alias gopl "cd ~/projects/_play"
alias gof "cd ~/projects/_forks"
alias dt "cd ~/Desktop"
alias dl "cd ~/Downloads"
alias .. "cd .."
alias ... "cd ../.."
alias .... "cd ../../.."
alias ..... "cd ../../../.."
# git
alias "g" "git"
alias "gf" "git fetch"
alias "gd" "git diff"
alias "gs" "git status"
alias "gc" "git commit"
alias "gcm" "git commit -m"
alias "gch" "git checkout"
alias "gm" "git merge"
alias "ga" "git add"
alias "ga." "git add ."

# browsers
alias "opera" "open /Applications/Opera.app"
alias "chrome" "open /Applications/Google\ Chrome.app"
alias "ffox" "open /Applications/Firefox.app"

# helpers
alias "rf" "rm -rf"
alias "c" "clear"

# fun
alias "hey" "npm"

# colours
set BLUE 005284
set RED dd4444

if test -d $HOME/private_aliases.fish
    source $HOME/private_aliases.fish
end

# Add nested node_modules folder to the PATH variable
set PATH ./node_modules/.bin/ $PATH

function sudo
    if test "$argv" = !!
        eval command sudo $history[1]
    else
        command sudo $argv
    end
end

function mko
  eval command mkdir $argv | cd $argv
end

function color
    set_color $argv
end

  color $BLUE
	echo "Enjoy the Journey, $USER!"
  color normal

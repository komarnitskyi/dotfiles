# theme config
set -g PRFX 'ToDo'
# aliasess
if test -n "$PROJECTS_DIR"
	echo "Your projects dir is $PROJECTS_DIR"
else
	set -x PROJECTS_DIR "~/projects"
	echo "A PROJECTS_DIR variable wasn't found. Used default value: ~/projects"
end
# navigation
alias pdir "echo $PROJECTS_DIR"
alias gop "cd  $PROJECTS_DIR/_projects"
alias gopl "cd $PROJECTS_DIR/_play"
alias gof "cd $PROJECTS_DIR/_forks"
alias dt "cd ~/Desktop"
alias dl "cd ~/Downloads"
alias .. "cd .."
alias ... "cd ../.."
alias .... "cd ../../.."
alias ..... "cd ../../../.."

# git
alias "gbranch" "git rev-parse --abbrev-ref HEAD"
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

# colours
set BLUE 005284
set RED dd4444

function sudo
    if test "$argv" = !!
        eval command sudo $history[1]
    else
        command sudo $argv
    end
end

function gpub
	git push -u origin (gbranch)
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

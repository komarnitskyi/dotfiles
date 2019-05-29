if test -e "$HOME/dotfiles/private_aliases.fish"
    source "$HOME/dotfiles/private_aliases.fish"
else
	echo "Private aliases not found"
end

# aliasess
if test -n "$PROJECTS_DIR"
	echo "Your projects dir is $PROJECTS_DIR"
else
	set -x PROJECTS_DIR "~/projects"
	echo "A PROJECTS_DIR variable wasn't found. Used default value: ~/projects"
end
# navigation
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
alias "push" "git push"
alias "pull" "git pull"
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

# docker
alias "dc" "docker-compose"
alias "dcr" "docker-compose run -d"

# fun
alias "hey" "npm"

# colours
set BLUE 005284
set RED dd4444

# Add nested node_modules folder to the PATH variable
set PATH ./node_modules/.bin/ $PATH

function killserver --argument port
     for pid in (lsof -i TCP:$port | awk '/LISTEN/{print $2}')
         echo -n "Found server for port $port with pid $pid: "
         kill -9 $pid; and echo "killed."; or echo "could not kill."
     end
end

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

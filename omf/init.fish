# aliasess

# navigation
alias gop "cd /Volumes/data/projects/_projects"
alias gopl "cd /Volumes/data/projects/_play"
alias gof "cd /Volumes/data/projects/_forks"
alias dt "cd ~/Desktop"
alias dl "cd ~/Downloads"
alias .. "cd .."
alias ... "cd ../.."
alias .... "cd ../../.."
alias ..... "cd ../../../.."

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

function color
    set_color $argv
end

  color $BLUE
  echo  "     .-.                       .--. _       .-.    "
  echo  "     : :                      : .-':_;      : :    "
  echo  ".--. : `-.   ,-.,-.,-..-..-.  : `; .-. .--. : `-.  "
  echo "' .; :: .. :  : ,. ,. :: :; :  : :  : :`._-.': .. :"
  echo "`.__.':_;:_;  :_;:_;:_;`._. ;  :_;  :_;`.__.':_;:_;"
  echo "                        .-. :                      "
  echo "                        `._.'                      "
  color normal

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

function color
    set_color $argv
end

function citty
  color $BLUE
  echo "_._     _,-'''''`-._"
  echo "(,-.`._,'(       |\`-/|"
  echo "   `-.-' \ )-`( , o o)"
  echo "-bf-      `-   \`_`'''-"
  color normal
end

color $BLUE
echo ╔┓┏╦━━╦┓╔┓╔━━╗
echo ║┗┛║┗━╣┃║┃║╯╰║
echo ║┏┓║┏━╣┗╣┗╣╰╯║
echo ╚┛┗╩━━╩━╩━╩━━╝
color normal
citty

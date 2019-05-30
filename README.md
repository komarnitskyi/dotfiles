# Dotfiles
Just an another dotfiles with supports of Fish (oh-my-fish).

## Whats included?
* *iterm* colorscheme brogrammer  
* Fish Dotfiles
* Fonts
* .gitignore
* .editorconfig

## Fish helpers
* `killserver <port>` kills server that listen `<port>`
* `mko <folder>` alias for `mkdir <folder>` and `cd <folder>`

## Instalation
```bash
cd ~ & git clone https://github.com/komarnitskyi/dotfiles.git
cd ~/dotfiles & ./setup.sh
```
To set `fish` as default shell use following command `chsh -s 'which fish'`

## Private configuration
The dotfiles will include a `$HOME/private_aliases.fish` file, that should
contain aliases or something other only for that computer, where it placed.

backup:
	@mkdir -p ~/Backups/dotfiles
	@cp ~/.{bashrc,zshrc,shellrc,bash_profile,bash_logout,bash_aliases,gitconfig,Xresources,zsh_personal,yarnrc,vimrc,screenrc,face,dmrc,conkyrc} ~/Backups/dotfiles

remove:
	@rm ~/.{bash,zsh}rc
	@rm ~/.bash_{profile,logout,aliases}
	@rm ~/.gitconfig
	@rm ~/.zsh_personal
	@rm ~/.{Xresources,zsh_personal,yarnrc,vimrc,screenrc,face,dmrc,conkyrc}
	@rm ~/.config/alacritty/alacritty.yml
	@rm ~/.config/fontconfig/fonts.conf

install:
	@ln -s ~/.dotfiles/.bashrc ~/.bashrc
	@ln -s ~/.dotfiles/.bash_logout ~/.bash_logout
	@ln -s ~/.dotfiles/.bash_profile ~/.bash_profile
	@ln -s ~/.dotfiles/.bash_aliases ~/.bash_aliases
	@ln -s ~/.dotfiles/.zshrc ~/.zshrc
	@ln -s ~/.dotfiles/.shellrc ~/.shellrc
	@ln -s ~/.dotfiles/.yarnrc ~/.yarnrc
	@ln -s ~/.dotfiles/.zsh_personal ~/.zsh_personal
	@ln -s ~/.dotfiles/.gitconfig ~/.gitconfig
	@ln -s ~/.dotfiles/.Xresources ~/.Xresources
	@ln -s ~/.dotfiles/.screenrc ~/.screenrc
	@ln -s ~/.dotfiles/.dmrc ~/.dmrc
	@ln -s ~/.dotfiles/.face ~/.face
	@ln -s ~/.dotfiles/alacritty/alacritty.yml ~/.config/alacritty/alacritty.yml
	@ln -s ~/.dotfiles/fonts/fonts.conf ~/.config/fontconfig/fonts.conf

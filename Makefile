help:
	@echo "make backup: Backup dotfiles to ~/Backups/dotfiles"
	@echo "make remove: Remove dotfiles from ~"
	@echo "make install: Install dotfiles to ~"

backup:
	@mkdir -p ~/Backups/dotfiles
	@cp ~/.{bashrc,zshrc,bash_profile,bash_logout,Xresources,screenrc,face,dmrc,conkyrc,xinitrc,genentriesrc} ~/Backups/dotfiles
	@mkdir -p ~/Backups/dotfiles/{alacritty,fontconfig}
	@cp ~/.config/alacritty/{alacritty,default-arcolinux,default-github}.yml ~/Backups/dotfiles/alacritty/
	@cp ~/.config/fontconfig/fonts.conf ~/Backups/dotfiles/fontconfig/
	@echo "Backup complete"

remove:
	@rm ~/.{bash,zsh}rc
	@rm ~/.bash_{profile,logout}
	@rm ~/.{Xresources,screenrc,face,dmrc,conkyrcm,genentriesrc,xinitrc}
	@rm ~/.config/alacritty/{alacritty,default-arcolinux,default-github}.yml
	@rm ~/.config/fontconfig/fonts.conf
	@echo "Dotfiles removed"

install:
	@ln -s ~/.dotfiles/bash/.bashrc ~/.bashrc
	@ln -s ~/.dotfiles/bash/.bash_logout ~/.bash_logout
	@ln -s ~/.dotfiles/bash/.bash_profile ~/.bash_profile
	@ln -s ~/.dotfiles/alacritty/alacritty.yml ~/.config/alacritty/alacritty.yml
	@ln -s ~/.dotfiles/alacritty/default-arcolinux.yml ~/.config/alacritty/default-arcolinux.yml
	@ln -s ~/.dotfiles/alacritty/default-github.yml ~/.config/alacritty/default-github.yml
	@ln -s ~/.dotfiles/zsh/.zshrc ~/.zshrc
	@ln -s ~/.dotfiles/zsh/.shellrc ~/.shellrc
	@ln -s ~/.dotfiles/.shell_aliases ~/.shell_aliases
	@ln -s ~/.dotfiles/.conkyrc ~/.conkyrc
	@ln -s ~/.dotfiles/.xinitrc ~/.xinitrc
	@ln -s ~/.dotfiles/.yarnrc ~/.yarnrc
	@ln -s ~/.dotfiles/.Xresources ~/.Xresources
	@ln -s ~/.dotfiles/.screenrc ~/.screenrc
	@ln -s ~/.dotfiles/.dmrc ~/.dmrc
	@ln -s ~/.dotfiles/.face ~/.face
	@ln -s ~/.dotfiles/fonts/fonts.conf ~/.config/fontconfig/fonts.conf
	@ln -s ~/.dotfiles/.genentriesrc ~/.genentriesrc
	@ln -s ~/.dotfiles/.wgetrc ~/.wgetrc
	@echo "Dotfiles installed"

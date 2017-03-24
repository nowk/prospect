default: install

clean_links:
	rm -f \
		~/.vim \
		~/.vimrc \
		~/.tmux \
		~/.tmux.conf \
		~/.zshrc \
		~/.zshrc.local \
		~/.gitconfig \
		~/.gitignore_global

link_vim:
	ln -s $(shell pwd)/vim \
		~/.vim \
		&& ln -s $(shell pwd)/vimrc ~/.vimrc
.PHONY: link_vim

link_tmux:
	ln -s $(shell pwd)/tmux ~/.tmux \
		&& ln -s $(shell pwd)/tmux.conf ~/.tmux.conf
.PHONY: link_tmux

link_zsh:
	ln -s $(shell pwd)/zshrc ~/.zshrc \
		&& ln -s $(shell pwd)/zshrc.local ~/.zshrc.local
.PHONY: link_zsh

link_git:
	ln -s $(shell pwd)/gitconfig ~/.gitconfig \
		&& ln -s $(shell pwd)/gitignore_global ~/.gitignore_global
.PHONY: link_git


install_vundle:
	@git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
.PHONY: install_vundle


install: clean_links
	@$(MAKE) -s link_vim
	@$(MAKE) -s link_tmux
	@$(MAKE) -s link_zsh
	@$(MAKE) -s link_git
	@$(MAKE) -s install_vundle
	#
	@vim +PluginInstall +qall
.PHONY: install


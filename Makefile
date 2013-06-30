
vim-init:
	git submodule init
	git submodule update

vim-update:
	git submodule foreach 'git checkout master && git pull'

provision:
	fab -R workstation provision

.PHONY: update-vim provision

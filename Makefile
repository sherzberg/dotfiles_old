
vim-init:
	git submodule init
	git submoudle update

vim-update:
	git submodule foreach 'git checkout master && git pull'

provision:
	fab provision -R workstation

.PHONY: update-vim provision

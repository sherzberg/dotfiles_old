
vim-init:
	git submodule init
	git submoudle update

vim-update:
	git submodule foreach 'git checkout master && git pull'

provision:
	fab -R workstation provision

.PHONY: update-vim provision

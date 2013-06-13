
update-vim:
	git submodule foreach 'git checkout master && git pull'

provision:
	fab provision -R workstation

.PHONY: update-vim provision

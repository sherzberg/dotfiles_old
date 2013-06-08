from fabric.api import task, env, execute, sudo, settings, hide, run
from loom import puppet
from loom.tasks import *


env.user = 'sherzberg'
env.puppet_module_dir = 'puppet/modules/'
env.roledefs = {
    'workstation': ['localhost'],
}


def has_librarian_installed():
    with settings(hide('warnings', 'running', 'stdout', 'stderr'), warn_only=True):
        librarian = run('which librarian-puppet')
    return librarian.succeeded


@task
def provision():
    env.roles = ['workstation']
    if not has_librarian_installed():
        execute(puppet.install)

    execute(puppet.update)
    execute(puppet.apply)

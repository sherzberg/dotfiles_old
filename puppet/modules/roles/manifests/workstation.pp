class roles::workstation {

  package{'cowsay':
    ensure => present,
  }

  include roles::vcs
  include roles::python
  include roles::jvm
  include roles::virtualization
  include roles::uitools

}

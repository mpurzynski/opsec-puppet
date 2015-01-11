class base {
    # basic tools
    package {
        ['ntp', 'sudo', 'htop']:
            ensure => latest
    }
    # centos and redhat specific packages
    case $::operatingsystem {
        'CentOS', 'RedHat': {
            package {
                ['epel-release', 'vim-enhanced']:
                    ensure => latest
            }
        }
    }
}
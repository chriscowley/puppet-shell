class shell {
    include shell::htop
    include shell::openssh
}

class shell::htop {
    if $operatingsystem == "CentOS" {
        include yum::epel
    }
    package{ "htop":
        ensure => latest,
    }
}

class shell::openssh {
    package { "openssh-clients":
        ensure => latest,
    }
}

class shell::wget {
    package { "wget":
        ensure => latest,
    }
}

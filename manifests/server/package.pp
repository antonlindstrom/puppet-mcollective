class mcollective::server::package {

  package { 'mcollective':
    ensure  => present,
    require => Class['mcollective::package'],
  }

}

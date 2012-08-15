class mcollective::service($ensure='running') {

  service { 'mcollective':
    ensure => $ensure,
  }

}

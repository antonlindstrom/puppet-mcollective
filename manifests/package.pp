class mcollective::package($ensure='present') {

  package { 'stomp':
    ensure   => $ensure,
    provider => gem,
  }

  package { 'mcollective-common':
    ensure  => $ensure,
    require => Package['stomp'],
  }

}

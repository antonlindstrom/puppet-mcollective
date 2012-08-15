class mcollective::server::config(
  $stomp_server     = $::mcollective::params::stomp_server,
  $stomp_port       = $::mcollective::params::stomp_port,
  $stomp_user       = $::mcollective::params::stomp_user,
  $stomp_password   = $::mcollective::params::stomp_password,
  $psk              = $::mcollective::psk
) inherits mcollective::params {

  file { $server_config:
    ensure  => present,
    content => template('mcollective/server.cfg.erb'),
    require => Class['mcollective::server::package'],
    notify  => Class['mcollective::server::service'],
  }

}

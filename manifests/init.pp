class mcollective (
  $stomp_server     = undef,
  $stomp_port       = undef,
  $stomp_user       = undef,
  $stomp_password   = undef,
  $psk              = undef
) {

  class { 'mcollective::server::config':
    stomp_server     => $stomp_server,
    stomp_port       => $stomp_port,
    stomp_user       => $stomp_user,
    stomp_password   => $stomp_password,
    psk              => $psk,
  }

  class { 'mcollective::package': }
  class { 'mcollective::server::package': }
  class { 'mcollective::server::service': }

}

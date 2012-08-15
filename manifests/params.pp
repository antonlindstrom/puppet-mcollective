class mcollective::params {

  $server_config = '/etc/mcollective/server.cfg'
  $client_config = '/etc/mcollective/client.cfg'

  $connector = 'stomp'

  $stomp_server   = 'stomp'
  $stomp_port     = '61613'
  $stomp_user     = 'guest'
  $stomp_password = 'guest'

  $logfile = '/var/log/mcollective.log'
  
  $mc_daemonize     = 1
  $keeplogs         = 1
  $max_log_size     = 10240
  $loglevel         = 'info'
  $identity         = $::fqdn
  $registerinterval = 300

  $factsource   = 'yaml'  
  $factfile     = '/etc/mcollective/facts.yaml'

  $securityprovider = 'psk'
  $psk              = 'supersecret'

  $libdir = $::osfamily ? {
    redhat  => '/usr/libexec/mcollective',
    debian  => '',
    default => fail("OSfamily ${::osfamily} not supported")
  }
  
}

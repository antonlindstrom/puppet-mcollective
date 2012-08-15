# MCollective Puppet module

This is a module for managing mcollective via puppet

Note that this is a work in progress and should not be used in production.

### Usage


    class { 'mcollective': 
      stomp_server    => 'stomp.example.com',
      stomp_port      => '61613',
      stomp_user      => 'guest',
      stomp_password  => 'guest',
      psk             => 'supersecret-psk',
    }

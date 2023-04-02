class big_ugly_mess {
  user { 'bob':
    ensure     => present,
    home       => '/var/www/bob_wide_web',
    managehome => true,
  }
  file { '/var/www/bob_wide_web/index.html':
    ensure => file,
    source => 'puppet:///big_ugly_mess/bob_wide_web/index.html'
  }
  user { 'carol':
    ensure     => present,
    home       => '/var/www/unicorn_central',
    managehome => true,
  }
  file { '/var/www/unicorn_central/index.html':
    ensure => file,
    source => 'puppet:///big_ugly_mess/unicorn_central/index.html'
  }
  user { 'alice':
    ensure     => present,
    home       => '/var/www/alice',
    managehome => true,
  }  
  file { '/var/www/alice/index.html':
    ensure => file,
    source => 'puppet:///big_ugly_mess/alice/index.html'
  }
}

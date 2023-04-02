class big_ugly_mess {
  $home_dir = '/var/www'
  $puppet_base_path = 'puppet:///big_ugly_mess'
  $user_data = {
    'bob' => 'bob_wide_web',
    'carol' => 'unicorn_central',
    'alice' => 'alice',
  }.each | $username, $maindir |{
    user { $username:
      ensure     => present,
      home       => "${home_dir}/${maindir}",
      managehome => true,
    }
    file { "${home_dir}/${maindir}/index.html":
      ensure => file,
      source =>"$puppet_base_path/${maindir}/index.html"
    }
  }
}

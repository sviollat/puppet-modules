# Defini le type pour creer les comptes virtuels
#

define accounts::virtual ($uid,$realname,$pass) {

  user {
    ensure	=> 'present',
    uid		=> $uid,
    gid		=> $title,
    shell	=> '/bin/bash',
    home	=> "/home/${title}",
    comment	=> $realname,
    password	=> $pass,
    managehome	=> true,
    require	=> Group[$title],	  
  }

  group {
    gid		=> $uid,
  }

  file { "/home/${title}":
    ensure	=> directory,
    owner	=> $title,
    group	=> $title,
    mode	=> 0750,
    require	=> [ User[$title], Group[$title] ],
  }

}

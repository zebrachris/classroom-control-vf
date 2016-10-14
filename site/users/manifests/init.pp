include users::admins

class users {

  user { 'fundamentals': 
    ensure => present,
  }

}



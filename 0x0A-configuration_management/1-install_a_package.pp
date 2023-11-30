# install Flask version 2.1.0 using pip3

 exec { 'flask':
  command => '/usr/bin/pip3 install flask==2.1.0',
}

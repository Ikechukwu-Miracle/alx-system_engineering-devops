# Install Nginx
package { 'nginx':
  ensure => 'latest',
}

# Create directory and index.html file
file { '/etc/nginx/html':
  ensure => 'directory',
}

file { '/etc/nginx/html/index.html':
  content => 'Hello World!',
}

# Create 404.html file
file { '/etc/nginx/html/404.html':
  content => "Ceci n'est pas une page",
}

# Configure Nginx default site
file { '/etc/nginx/sites-available/default':
  content => "
    server {
      listen 80;
      listen [::]:80 default_server;
      add_header X-Served-By $hostname;
      root /etc/nginx/html;
      index index.html index.htm;

      location /redirect_me {
        return 301 https://www.linkedin.com/in/iykenweke;
      }

      error_page 404 /404;
      location /404 {
        root /etc/nginx/html;
        internal;
      }
    }
  ",
  require => Package['nginx'],
}

# Restart Nginx service
service { 'nginx':
  ensure    => 'running',
  enable    => true,
  subscribe => File['/etc/nginx/sites-available/default'],
}

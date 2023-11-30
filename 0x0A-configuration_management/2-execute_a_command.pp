# Kill the process named 'killmenow' using pkill
exec { 'killmenow_process':
  command  => 'pkill killmenow',
  provider => 'shell',
}


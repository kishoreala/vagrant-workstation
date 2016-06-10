
case $::osfamily {
  'Windows': {
    hiera_include('classes')
  }
  'Redhat': {
    hiera_include('classes')
  }
  default: {
    notice('todo')
  }
}

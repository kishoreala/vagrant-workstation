case $::operatingsystem {
  redhat,centos,ubuntu:
  hiera_include('classes')
}

windows: {
  Package { provider => 'chocolatey'}
  hiera_include('classes')
}

default: { fail('unrecognized operatingsystem')}

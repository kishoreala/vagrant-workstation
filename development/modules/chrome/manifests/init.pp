#
#
#
class chrome (String $version = '50.0.2661.94') {

  package { 'googlechrome':
    ensure   => $version,
    provider => 'chocolatey',
  }
}

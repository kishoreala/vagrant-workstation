#
class chrome (String $version = '') {

  package { 'googlechrome':
    ensure   => $version,
    provider => 'chocolatey',
  }
}

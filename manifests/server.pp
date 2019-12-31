# == Class dns::server
#
class dns::server {
  include dns::server::params
  class { 'dns::server::install': } ->
  class { 'dns::server::config': } ~>
  class { 'dns::server::service': }
}

define munin::register (
  $host = $::fqdn,
  $port = '4949',
  $use_ssh = false,
  $description = 'absent',
  $config = [],
  $export_tag = 'munin',
  $warnings    = {},
  $critical    = {},
)
{
  $fhost = $name
  $client_type = 'client'

  @@concat::fragment{ "munin_client_${fhost}_${port}":
    target  => '/etc/munin/munin.conf',
    content => template("munin/client.erb"),
    tag     => $export_tag,
  }
}

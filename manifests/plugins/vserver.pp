class munin::plugins::vserver {
  munin::plugin {
    [ netstat, processes ]:
      ensure => present;
  }
}


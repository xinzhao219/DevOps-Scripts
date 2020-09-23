class firewall_node2 {
   firewalld_port { 'Open port 9007 in the public zone':
      ensure   => present,
      zone     => 'public',
      port     => 9007,
      protocol => 'tcp',
   }
}

class firewall_node3 {
    firewalld_port { 'Open port 8096 in the public zone':
      ensure   => present,
      zone     => 'public',
      port     => 8096,
      protocol => 'tcp',
   }
}

node 'stapp03.stratos.xfusioncorp.com' {
    include firewall_node3
}

node 'stapp02.stratos.xfusioncorp.com' {
    include firewall_node2
}

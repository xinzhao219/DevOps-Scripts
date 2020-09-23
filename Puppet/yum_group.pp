class yum_group {
  yum::group { 'Fedora Packager':
    ensure  => present,
    timeout => 300,
  }
}
node 'stapp01.stratos.xfusioncorp.com' {
  include yum_group
}
node 'stapp02.stratos.xfusioncorp.com' {
  include yum_group
}
node 'stapp03.stratos.xfusioncorp.com' {
  include yum_group
}

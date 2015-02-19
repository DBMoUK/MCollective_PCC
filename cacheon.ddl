# /opt/puppet/libexec/mcollective/mcollective/agent/cacheon.ddl
metadata :name        => 'opon',
         :description => 'Runs /opt/puppet/bin/puppet apply -e "ini_setting { \'cache_setting\': ensure => present, path => \'/etc/puppetlabs/puppet/puppet.conf\', section => \'agent\', setting => \'use_cached_catalog\', value => \'true\'}" on *nix agents',
         :author      => 'David Bryant-Moore',
         :license     => 'Apache-2.0',
         :version     => '1.0',
         :url         => 'http://www.puppetlabs.com',
         :timeout     => 15

action "run", :description => 'Runs /opt/puppet/bin/puppet apply -e "ini_setting { \'cache_setting\': ensure => present, path => \'/etc/puppetlabs/puppet/puppet.conf\', section => \'agent\', setting => \'use_cached_catalog\', value => \'true\'}" on *nix agents' do
  display :always

  output :status,
         :description => "The exit code of the script",
         :display_as  => "Return Value"

  output :out,
         :description => "The output of the script on stdout",
         :display_as  => "Output Channel"

  output :err,
         :description => "The output of the script on stderr",
         :display_as  => "Error Channel"

end

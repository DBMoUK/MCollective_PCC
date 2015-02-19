# /opt/puppet/libexec/mcollective/mcollective/agent/cacheon.rb
 module MCollective
  module Agent
    class Cacheon<RPC::Agent
      activate_when do
        Facts["kernel"] != "windows"
      end

      action "run" do
        command = '/opt/puppet/bin/puppet apply -e "ini_setting { \'cache_setting\': ensure => present, path => \'/etc/puppetlabs/puppet/puppet.conf\', section => \'agent\', setting => \'use_cached_catalog\', value => \'true\'}"'
        reply[:status] = run(command,:stdout=>:out,:stderr=>:err,:chomp=>true)
      end
    end
  end
end

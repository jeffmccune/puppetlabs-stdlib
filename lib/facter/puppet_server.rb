# The value of the server setting as currently configured in Puppet.  This can
# be helpful when writing a manifest to automatically switch a Puppet Agent
# node from one server to another.

# The value should be directly usable in a File resource path attribute.
require 'facter/util/puppet_settings'

Facter.add(:puppet_server) do
  setcode do
    # This will be nil if Puppet is not available.
    Facter::Util::PuppetSettings.with_puppet do
      Puppet[:server]
    end
  end
end

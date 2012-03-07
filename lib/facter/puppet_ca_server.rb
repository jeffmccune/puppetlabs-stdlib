# This fact returns the currently configured --ca_server setting of the Puppet
# Agent process, if any.  This fact is meant to make it easier to reconfigure
# Puppet agent nodes using a Puppet Master.

require 'facter/util/puppet_settings'

Facter.add(:puppet_ca_server) do
  setcode do
    # This will be nil if Puppet is not available.
    Facter::Util::PuppetSettings.with_puppet do
      Puppet[:ca_server]
    end
  end
end

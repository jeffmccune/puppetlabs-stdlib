# This facter fact returns the value of the Puppet confdir setting for the node
# running puppet or puppet agent.  The intent is to enable Puppet modules to
# automatically have insight into a place where they can place configuration
# data, regardless of the node's platform.
#
# The value should be directly usable in a File resource path attribute.
require 'facter/util/puppet_settings'

Facter.add(:puppet_confdir) do
  setcode do
    # This will be nil if Puppet is not available.
    Facter::Util::PuppetSettings.with_puppet do
      Puppet[:confdir]
    end
  end
end

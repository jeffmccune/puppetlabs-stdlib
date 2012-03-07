# The TCP port the Puppet process is currently configured to contact the master
# using.

require 'facter/util/puppet_settings'

Facter.add(:puppet_masterport) do
  setcode do
    # This will be nil if Puppet is not available.
    Facter::Util::PuppetSettings.with_puppet do
      Puppet[:masterport]
    end
  end
end

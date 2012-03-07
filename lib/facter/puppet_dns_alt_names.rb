# The --dns_alt_names setting of the Puppet Agent or Puppet process, if any.

require 'facter/util/puppet_settings'

Facter.add(:puppet_dns_alt_names) do
  setcode do
    # This will be nil if Puppet is not available.
    Facter::Util::PuppetSettings.with_puppet do
      Puppet[:dns_alt_names]
    end
  end
end

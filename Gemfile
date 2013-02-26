source "https://rubygems.org"

platform :ruby do
  gem 'pry', :group => :development
end

group :test do
  gem 'rspec', "~> 2.11.0", :require => false
  gem 'mocha', "~> 0.10.5", :require => false
  gem 'rspec-puppet'
  gem 'puppetlabs_spec_helper'
end

if puppet_branch = ENV['GIT_PUPPET_BRANCH']
  gem 'puppet', :git => "git://github.com/puppetlabs/puppet.git", :branch => puppet_branch
else
  gem 'puppet'
end

if facter_branch = ENV['GIT_FACTER_BRANCH']
  gem 'facter', :git => "git://github.com/puppetlabs/facter.git", :branch => facter_branch
else
  gem 'facter'
end

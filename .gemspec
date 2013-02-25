#
# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = "puppet_module_stdlib"

  version = '3.2.0'
  if mdata = version.match(/(\d+\.\d+\.\d+)/)
    s.version = mdata[1]
  else
    s.version = version
  end

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Puppet Labs"]
  s.date = "2013-02-25"
  s.description = "Puppet standard library module"
  s.email = "info@puppetlabs.com"
  s.executables = []
  s.files = ["README.markdown"]
  s.homepage = "http://puppetlabs.com"
  s.rdoc_options = ["--title", "Facter - System Inventory Tool", "--main", "README", "--line-numbers"]
  s.require_paths = ["lib"]
  s.rubyforge_project = "puppet_module_stdlib"
  s.rubygems_version = "1.8.24"
  s.summary = "Puppet Labs Standard Library module"
end

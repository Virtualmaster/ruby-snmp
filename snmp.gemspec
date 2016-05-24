$:.unshift File.expand_path("../lib", __FILE__)

require 'snmp/version'

PKG_FILES = Dir.glob("{lib,test,examples,data}/**/*") + %w(Rakefile README.rdoc)

Gem::Specification.new do |s|
    s.platform = Gem::Platform::RUBY
    s.summary = "A Ruby implementation of SNMP (the Simple Network Management Protocol)."
    s.name = 'snmp'
    s.version = SNMP::VERSION
    s.files = PKG_FILES.to_a
    s.extra_rdoc_files = ['README.rdoc']
    s.rdoc_options << '--main' << 'README.rdoc' <<
                      '--title' << 'SNMP Library for Ruby'
    s.description = "A Ruby implementation of SNMP (the Simple Network Management Protocol)."
    s.author = 'Dave Halliday'
    s.email = 'hallidave@gmail.com'
    s.rubyforge_project = 'snmplib'
    s.homepage = 'http://snmplib.rubyforge.org'
end

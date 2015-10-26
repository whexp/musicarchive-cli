# Ensure we require the local version and not one we might have installed already
require File.join([File.dirname(__FILE__),'lib','musicarchive','version.rb'])
spec = Gem::Specification.new do |s| 
  s.name = 'musicarchive'
  s.version = Musicarchive::VERSION
  s.author = 'Your Name Here'
  s.email = 'your@email.address.com'
  s.homepage = 'http://your.website.com'
  s.platform = Gem::Platform::RUBY
  s.summary = 'A description of your project'
  s.files = `git ls-files`.split("
")
  s.require_paths << 'lib'
  s.has_rdoc = true
  s.extra_rdoc_files = ['README.rdoc','musicarchive.rdoc']
  s.rdoc_options << '--title' << 'musicarchive' << '--main' << 'README.rdoc' << '-ri'
  s.bindir = 'bin'
  s.executables << 'musicarchive'
  s.add_development_dependency('rake')
  s.add_development_dependency('rdoc')
  s.add_development_dependency('aruba')
  s.add_runtime_dependency('gli','2.13.2')
  s.add_runtime_dependency('terminal-table','1.5.2')
  s.add_runtime_dependency('rest-client')
  s.add_runtime_dependency('json')
end

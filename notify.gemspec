# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'notify/version'

Gem::Specification.new do |spec|
  spec.name          = "notify"
  spec.version       = Notify::VERSION
  spec.authors       = ["Oliver Nightingale"]
  spec.email         = ["oliver.nightingale1@gmail.com"]
  spec.summary       = %q{Wrapper around terminal notifier}
  spec.description   = %q{Allow terminal notifier to be used from a remote machine}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.6"
  spec.add_development_dependency "rake"

  spec.add_runtime_dependency "terminal-notifier", "~> 1.6.2"
end

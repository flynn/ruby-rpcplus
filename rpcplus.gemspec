# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'rpcplus/version'

Gem::Specification.new do |spec|
  spec.name          = "rpcplus"
  spec.version       = RPCPlus::VERSION
  spec.authors       = ["Lewis Marshall"]
  spec.email         = ["lewis@lmars.net"]
  spec.summary       = %q{A Flynn RPCPlus client for Ruby}
  spec.description   = %q{A Flynn RPCPlus client for Ruby}
  spec.homepage      = ""
  spec.license       = "BSD"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_dependency "celluloid-io"
  spec.add_dependency "yajl-ruby"

  spec.add_development_dependency "bundler", "~> 1.5"
  spec.add_development_dependency "rake"
end

# -*- encoding: utf-8 -*-
require File.expand_path('../lib/toady/version', __FILE__)

Gem::Specification.new do |gem|
  gem.authors       = ["Dennis Walters"]
  gem.email         = ["pooster@gmail.com"]
  gem.summary       = %q{A total yes-man object}
  gem.description   = <<-EOD
    Toady is a simple little fella that always responds to any message
    you send it.
  EOD
  gem.homepage      = "http://github.com/ess/toady"
  gem.license       = 'MIT'

  gem.files         = `git ls-files`.split($\)
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.name          = "toady"
  gem.require_paths = ["lib"]
  gem.version       = Toady::VERSION

  gem.add_development_dependency 'rspec'
end

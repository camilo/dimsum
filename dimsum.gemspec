# -*- encoding: utf-8 -*-
require File.expand_path('../lib/dimsum/version', __FILE__)

Gem::Specification.new do |gem|
  gem.authors       = ["Aaron Olson", "Steven Noble", "Camilo Lopez"]
  gem.email         = ["aaron.olson@shopify.com", "steven.noble@shopify.com", "camilo.lopez@shopify.com"]
  gem.description   = %q{dimsum is a very simple ruby script that performs reservoir sampling on the input file.}
  gem.summary       = %q{reservoir sampling}
  gem.homepage      = ""

  gem.files         = `git ls-files`.split($\)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.name          = "dimsum"
  gem.require_paths = ["lib"]
  gem.bindir        = 'bin'
  gem.executables  << 'dimsum'
  gem.version       = Dimsum::VERSION
end

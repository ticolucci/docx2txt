# -*- encoding: utf-8 -*-
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'docx2txt/version'

Gem::Specification.new do |gem|
  gem.name          = "docx2txt"
  gem.version       = Docx2TXT::VERSION
  gem.authors       = ["Thiago Colucci"]
  gem.email         = ["ticolucci@gmail.com"]
  gem.description   = %q{Extract the simplest TXT I could imagine from a Docx. It just do a best effort to preserve paragraphs.}
  gem.summary       = %q{Extract the contents of MS Docx to TXT}
  gem.homepage      = 'https://github.com/ticolucci/docx2txt'
  gem.license       = 'MIT'


  gem.files         = `git ls-files`.split($/)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  #gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.require_paths = ["lib"]

  gem.add_dependency "nokogiri"
  gem.add_dependency "rubyzip"
end

# coding: utf-8
$:.unshift File.expand_path("../lib", __FILE__)

require 'daru/version.rb'

Daru::DESCRIPTION = <<MSG
Daru (Data Analysis in RUby) is a library for analysis.
Chai is an experimental package that simplifies Daru.
MSG

Gem::Specification.new do |spec|
  spec.name          = 'daru'
  spec.version       = Daru::VERSION
  spec.authors       = ['Sameer Deshmukh', 'kojix2']
  spec.email         = ['sameer.deshmukh93@gmail.com', '2xijok@gmai.com']
  spec.summary       = %q{Data Analysis in RUby}
  spec.description   = Daru::DESCRIPTION
  spec.homepage      = "http://github.com/kojix2/chai"
  spec.license       = 'BSD-2'

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency 'spreadsheet'
  spec.add_development_dependency 'bundler'
  spec.add_development_dependency 'rake'
  spec.add_development_dependency 'pry'
  spec.add_development_dependency 'pry-byebug'
  spec.add_development_dependency 'rspec'
  spec.add_development_dependency 'rspec-its'
  spec.add_development_dependency 'awesome_print'
  spec.add_development_dependency 'distribution', '~> 0.7'
  spec.add_development_dependency 'dbd-sqlite3'
  spec.add_development_dependency 'dbi'
  spec.add_development_dependency 'activerecord'
  spec.add_development_dependency 'mechanize'
  spec.add_development_dependency  'sqlite3'
  spec.add_development_dependency 'rubocop'
  spec.add_development_dependency 'simplecov'
  spec.add_development_dependency 'webmock'
end

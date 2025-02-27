# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'jwplayer/api/client/version'

Gem::Specification.new do |spec|
  spec.name          = 'jwplayer-api-client'
  spec.version       = JWPlayer::API::Client::VERSION
  spec.authors       = ['Raphael Daguenet']
  spec.email         = ['raphael.daguenet@gmail.com']

  spec.summary       = 'JWPlayer client to easily sign URLs'
  spec.description   = 'This gem aims to easily sign JWPlayer Platform API URLs according to the documentation: https://developer.jwplayer.com/jw-platform/reference/v1/authentication.html'
  spec.homepage      = 'https://github.com/raphi/jwplayer-api-client'
  spec.license       = 'MIT'

  # Prevent pushing this gem to RubyGems.org by setting 'allowed_push_host', or
  # delete this section to allow pushing this gem to any host.
  if spec.respond_to?(:metadata)
    spec.metadata['allowed_push_host'] = 'https://rubygems.org'
  else
    raise 'RubyGems 2.0 or newer is required to protect against public gem pushes.'
  end

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = 'exe'
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ['lib']

  spec.add_dependency 'addressable', '~> 2.8'
  spec.add_development_dependency 'bundler', '~> 2.1'
  spec.add_development_dependency 'rake', '~> 11.0'
  spec.add_development_dependency 'rspec', '~> 3.0'
end

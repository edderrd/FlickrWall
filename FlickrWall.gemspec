# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'FlickrWall/version'

Gem::Specification.new do |spec|
  spec.name          = "FlickrWall"
  spec.version       = FlickrWall::VERSION
  spec.authors       = ["Edder Rojas"]
  spec.email         = ["edder.rojas@gmail.com"]
  spec.description   = %q{Will fetch your groups photos and set as a background on your mac (sorry linux guys, maybe in the future)
}
  spec.summary       = %q{Flickr group image downloader to be set as a wallpaper}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"

  spec.add_development_dependency "rb-appscript", "~> 0.6"
  spec.add_development_dependency "flickr.rb", "~> 1.1"
end

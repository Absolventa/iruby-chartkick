lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "iruby/chartkick/version"

Gem::Specification.new do |spec|
  spec.name          = "iruby-chartkick"
  spec.version       = IRuby::Chartkick::VERSION
  spec.authors       = ["Robin Stammer\n"]
  spec.email         = ["robin.stammer@posteo.de"]

  spec.summary       = %q{Minimalistic wrapper around chartkick to use it within IRuby}
  spec.homepage      = "https://github.com/Absolventa/iruby-chartkick"

  # Prevent pushing this gem to RubyGems.org. To allow pushes either set the 'allowed_push_host'
  # to allow pushing to a single host or delete this section to allow pushing to any host.
  unless spec.respond_to?(:metadata)
    raise "RubyGems 2.0 or newer is required to protect against " \
      "public gem pushes."
  end

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_runtime_dependency "iruby"
  spec.add_dependency "chartkick", "~> 4.0.5"

  spec.add_development_dependency "bundler"
  spec.add_development_dependency "rake", "~> 13.0"
  spec.add_development_dependency "rspec", "~> 3.0"
end

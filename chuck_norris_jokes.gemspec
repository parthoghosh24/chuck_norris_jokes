
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "chuck_norris_jokes/version"

Gem::Specification.new do |spec|
  spec.name          = "chuck_norris_jokes"
  spec.version       = ChuckNorrisJokes::VERSION
  spec.authors       = ["Partho Ghosh"]
  spec.email         = ["partho.ghosh24@gmail.com"]

  spec.summary       = %q{Spice up your ruby app with chuck norris jokes!... And it is simple and fast!}
  spec.description   = %q{This gem allows you to fetch and integrate chuck norris jokes from chucknorris.io. It has a 'name' mode via which you can replace 'Chuck Norris' with 'name'(not recommended unless you are an equivalent legend say like Rajnikanth)}
  spec.homepage      = "https://github.com/parthoghosh24/chuck_norris_jokes"
  spec.license       = "MIT"

  # Prevent pushing this gem to RubyGems.org. To allow pushes either set the 'allowed_push_host'
  # to allow pushing to a single host or delete this section to allow pushing to any host.
  if spec.respond_to?(:metadata)
    spec.metadata["allowed_push_host"] = "https://rubygems.org"

    spec.metadata["homepage_uri"] = spec.homepage
    spec.metadata["source_code_uri"] = "https://github.com/parthoghosh24/chuck_norris_jokes"
    spec.metadata["changelog_uri"] = "https://github.com/parthoghosh24/chuck_norris_jokes"
  else
    raise "RubyGems 2.0 or newer is required to protect against " \
      "public gem pushes."
  end

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files         = Dir.chdir(File.expand_path('..', __FILE__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.17"
  spec.add_development_dependency "rake", "~> 13.0"
  spec.add_development_dependency "rspec", "~> 3.0"
  spec.add_dependency "faraday", "~> 1.0.1"
end

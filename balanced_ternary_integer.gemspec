
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "balanced_ternary_integer/version"

Gem::Specification.new do |spec|
  spec.name          = "balanced_ternary_integer"
  spec.version       = BalancedTernaryInteger::VERSION
  spec.authors       = ["Vasiliy Petrov"]
  spec.email         = ["saugardas@yandex.ru"]

  spec.summary       = %q{Conversion from/to balanced ternary and decimal integer system.}
  spec.description   = %q{Conversion from/to balanced ternary and decimal integer system.}
  spec.homepage      = "https://github.com/Saugardas/balanced_ternary_integer"
  spec.license       = "MIT"

  spec.metadata = {
      'changelog_uri' => 'https://github.com/Saugardas/balanced_ternary_integer/blob/master/CHANGELOG.md'
  }

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files         = Dir.chdir(File.expand_path('..', __FILE__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.17"
  spec.add_development_dependency "rake", ">= 12.3.3"
  spec.add_development_dependency "rspec", "~> 3.0"
end
# frozen_string_literal: true

require_relative "lib/fancy_routes/version"

Gem::Specification.new do |spec|
  spec.name = "fancy_routes"
  spec.version = FancyRoutes::VERSION
  spec.authors = ["Josh Pigford"]

  spec.summary = "A Rails engine that makes your routes more fancy"
  spec.description = "A Rails engine that makes your routes more fancy"
  spec.homepage = "https://github.com/shpigford/fancy_routes"
  spec.license = "MIT"
  spec.required_ruby_version = ">= 3.0.0"

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = "https://github.com/shpigford/fancy_routes"

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files = Dir.chdir(__dir__) do
    `git ls-files -z`.split("\x0").reject do |f|
      (File.expand_path(f) == __FILE__) ||
        f.start_with?(*%w[bin/ test/ spec/ features/ .git appveyor Gemfile])
    end
  end
  spec.bindir = "exe"
  spec.executables = spec.files.grep(%r{\Aexe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  # Uncomment to register a new dependency of your gem
  # spec.add_dependency "example-gem", "~> 1.0"
  spec.add_dependency "rails", ">= 6"

  # For more information and examples about making a new gem, check out our
  # guide at: https://bundler.io/guides/creating_gem.html
end

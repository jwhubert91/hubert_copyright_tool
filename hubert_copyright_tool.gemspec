lib = File.expand_path("lib", __dir__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "hubert_copyright_tool/version"

Gem::Specification.new do |spec|
  spec.name          = "hubert_copyright_tool"
  spec.version       = HubertCopyrightTool::VERSION
  spec.authors       = ["james w hubert"]
  spec.email         = ["jwhubert91@gmail.com"]

  spec.summary       = %q{Renders up-to-date copyright information views in Rails projects.}
  spec.description   = %q{As stated, renders up-to-date copyright information views in Rails projects..}
  spec.homepage      = "https://github.com/jwhubert91/hubert_copyright_tool"
  spec.license       = "MIT"

  spec.metadata["allowed_push_host"] = "https://github.com/jwhubert91/hubert_copyright_tool"

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = "https://github.com/jwhubert91/hubert_copyright_tool"
  spec.metadata["changelog_uri"] = "https://github.com/jwhubert91/hubert_copyright_tool"

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files         = Dir.chdir(File.expand_path('..', __FILE__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 2.0"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.0"
end

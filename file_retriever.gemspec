
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "file_retriever/version"

Gem::Specification.new do |spec|
  spec.name          = "file_retriever"
  spec.version       = FileRetriever::VERSION
  spec.authors       = ["Takashi Miyazaki"]
  spec.email         = ["hayao1900@gmail.com"]

  spec.summary       = %q{This library supports file processing. }
  spec.description   = %q{This library supports file processing. It processes the specified directory recursively and provides file type and path information.}
  spec.homepage      = "https://github.com/hayao11/file_retriever"
  spec.license       = "MIT"


  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files         = Dir.chdir(File.expand_path('..', __FILE__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 2.0"
  spec.add_development_dependency "rake", ">= 12.3.3"
end

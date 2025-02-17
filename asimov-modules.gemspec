Gem::Specification.new do |gem|
  gem.version            = File.read("VERSION").chomp
  gem.date               = File.mtime("VERSION").strftime("%Y-%m-%d")

  gem.name               = "asimov-modules"
  gem.homepage           = "https://github.com/asimov-modules/asimov-modules.rb"
  gem.license            = "Unlicense"
  gem.summary            = "ASIMOV Modules for Ruby"
  gem.description        = ""
  gem.metadata           = {
    "homepage_uri"      => gem.homepage,
    "bug_tracker_uri"   => "https://github.com/asimov-modules/asimov-modules.rb/issues",
    "changelog_uri"     => "https://github.com/asimov-modules/asimov-modules.rb/blob/master/CHANGES.md",
    "documentation_uri" => "https://github.com/asimov-modules/asimov-modules.rb",
    "source_code_uri"   => "https://github.com/asimov-modules/asimov-modules.rb",
  }

  gem.author             = "ASIMOV Protocol"
  gem.email              = "support@asimov.so"

  gem.platform           = Gem::Platform::RUBY
  gem.files              = %w(AUTHORS CHANGES.md README.md UNLICENSE VERSION)
  gem.bindir             = %q(bin)
  gem.executables        = %w()

  gem.required_ruby_version = ">= 3.2"
  gem.add_development_dependency "rake", ">= 13"
  gem.add_runtime_dependency "asimov-module", ">= 25.0.0.dev"

  File.read("requirements.txt").each_line.map(&:chomp).sort.each do |module_id|
    gem.add_runtime_dependency "asimov-#{module_id}-module"
  end
end

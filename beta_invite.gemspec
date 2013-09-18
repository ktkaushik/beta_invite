$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "beta_invite/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "beta_invite"
  s.version     = BetaInvite::VERSION
  s.platform    = Gem::Platform::RUBY
  s.licenses    = ["MIT"]
  s.authors     = ["Kaushik Thirthappa"]
  s.email       = ["thirthappa.kaushik@gmail.com"]
  s.homepage    = "https://github.com/ktkaushik/beta_invite"
  s.summary     = "Setup beta invite system with ease"
  s.description = "Setup beta invite system with ease"

  s.files = Dir["{app,config,db,lib}/**/*"] + ["MIT-LICENSE", "Rakefile", "README.rdoc"]
  s.test_files = Dir["test/**/*"]

  s.add_dependency "rails", "~> 3.2.13"
  # s.add_dependency "jquery-rails"
end

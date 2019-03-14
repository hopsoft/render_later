require File.expand_path("../lib/render_later/version", __FILE__)

Gem::Specification.new do |gem|
  gem.name        = "render_later"
  gem.license     = "MIT"
  gem.version     = RenderLater::VERSION
  gem.authors     = ["Nathan Hopkins"]
  gem.email       = ["natehop@gmail.com"]
  gem.homepage    = "https://github.com/hopsoft/render_later"
  gem.summary     = "Improve user perceived performance of your Rails app"
  gem.description = "Render sections of the page asynchronously after initial page load."

  gem.files       = Dir["lib/**/*.rb", "app/**/*.rb", "app/assets/javascripts/render_later.js", "[A-Z]*"]
  gem.test_files  = Dir["test/**/*.rb"]

  gem.add_dependency "rack"

  gem.add_development_dependency "bundler", "~> 1.17"
  gem.add_development_dependency "rake"
  gem.add_development_dependency "standardrb"
end

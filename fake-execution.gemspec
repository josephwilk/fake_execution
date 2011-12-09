Gem::Specification.new do |s|
  s.name        = "fake-execution"
  s.version     = "0.0.1"
  s.authors     = ["Joseph Wilk"]
  s.email       = ["joe@josephwilk.net"]
  s.homepage    = "http://github.com/josephwilk/fake-execution"
  s.summary     = "Fake out execution in Ruby to make testing easier"
  s.description = "Fake out execution in Ruby and instead of running them log them. Allows inspection of the commands that where executed. "
  s.add_development_dependency "rspec"
  s.files        = Dir.glob("{lib}/**/*") + %w(Readme.markdown)
  s.require_path = 'lib'
end

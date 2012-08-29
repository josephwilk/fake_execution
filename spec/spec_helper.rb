$:.unshift(File.dirname(__FILE__) + '/../lib')

require 'fake_execution/spec_helpers'

RSpec.configure do |config|
  config.extend(FakeExecution::SpecHelpers)
end

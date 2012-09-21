$:.unshift(File.dirname(__FILE__) + '/../lib')

require 'limited_red'
require 'limited_red/plugins/rspec'

require 'fake_execution/spec_helpers'

RSpec.configure do |config|
  config.include FakeExecution::SpecHelpers
end

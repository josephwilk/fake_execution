require 'fake_execution/safe'

module FakeExecution
  module SpecHelpers
    def self.extended(example_group)
      example_group.use_fake_execution(example_group)
    end

    def self.included(example_group)
      example_group.extend self
    end

    def use_fake_execution(describe_block)
      describe_block.before :each do
        FakeExecution.activate!
      end

      describe_block.after :each do
        FakeExecution.deactivate!
      end
    end
  end
end

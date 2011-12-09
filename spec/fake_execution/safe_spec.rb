require 'spec_helper'

describe "require fake_execution/safe" do
  it "should not activate" do
    FakeExecution.should_not_receive(:activate!)

    require 'fake_execution/safe'
  end
end

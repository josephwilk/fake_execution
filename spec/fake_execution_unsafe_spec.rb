require 'spec_helper'

describe "require 'fake_execution'" do
  it "should activate fake execution" do
    FakeExecution.should_receive(:activate!)

    require 'fake_execution'
  end
end


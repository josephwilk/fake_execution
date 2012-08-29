describe "require fake_execution/spec_helpers" do
  require 'fake_execution/spec_helpers'
  include FakeExecution::SpecHelpers
  
  before(:each) do
    Kernel.reset_cmds!
  end
  
  it "should activeate FakeExecution for rspec example" do
    `echo *`.should == ""
    cmds[0].should == 'echo *'
  end
end

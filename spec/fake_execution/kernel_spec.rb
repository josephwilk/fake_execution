require 'spec_helper'

describe Kernel do
  before(:each) do
    Kernel.reset_cmds!
  end
  
  [:fake_backtick, :fake_system, :fake_exec].each do |fake_execution_method|
    describe ".#{fake_execution_method}" do
      Kernel.send(fake_execution_method.to_sym, 'echo *')
      Kernel.cmds[0].should == 'echo *'
    end
  end
end

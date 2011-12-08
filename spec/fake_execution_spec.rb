require 'spec_helper'

describe "using FakeExecution" do
  describe "backtick" do
    it "should not run" do
      `ls`.should == ""
    end

    it "should store the command run" do
      `ls`
      cmds.should include 'ls'
    end

    it "should store multiple commands" do
      `git status`
      `git pull`

      cmds.should =~ ['git status', 'git pull']
    end
  end

  describe "system" do
    it "should store the command" do
      system('ls')
      cmds.should == ['ls']
    end
  end

  describe "exec" do
    it "should store the command" do
      #exec('ls')
      #cmds.should == ['ls']
    end
  end
end

describe "not using FakeExecution" do
  before(:each) do
    FakeExecution.deactivate!
  end
  
  describe "backtick" do
    it "should run" do
      `ls`.should_not == ""
    end
  end
end

RealKernel          = Kernel

module FakeExecution
  def self.activate!
    Object.class_eval do
      alias_method :real_system, :system
      alias_method :system, :fake_system

      alias_method :real_exec, :exec
      alias_method :exec, :fake_exec

      alias_method :real_backtick, :`
      alias_method :`, :fake_backtick
    end
    true
  end

  def self.deactivate!
    Kernel.class_eval do
      alias_method :fake_backtick, :`
      alias_method :`, :real_backtick
    end    
    true
  end
end

def FakeExecution
  return ::FakeExecution unless block_given?
  ::FakeExecution.activate!
  yield
ensure
::FakeExecution.deactivate!
end


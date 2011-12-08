RealKernel          = Kernel

module FakeExecution
  def self.activate!
    Object.class_eval do
      remove_const(:Kernel)

      const_set(:Kernel, FakeExecution::Kernel)
    end
    true
  end

  def self.deactivate!
    Object.class_eval do
      remove_const(:Kernel)

      const_set(:Kernel,       RealKernel)
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


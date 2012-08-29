Kernel.class_eval do
  attr_reader :cmds

  def reset_cmds!
    @cmds = []
  end

  def fake_backtick(cmd)
    @cmds ||= []
    @cmds << cmd
    ""
  end

  def fake_exec(cmd)
    @cmds ||= []
    @cmds << cmd
  end

  def fake_system(cmd)
    @cmds ||= []
    @cmds << cmd
    true
  end
end

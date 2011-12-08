Kernel.class_eval do
  attr_reader :cmds

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
  end

  alias_method :real_system, :system
  alias_method :system, :fake_system

  alias_method :real_exec, :exec
  alias_method :exec, :fake_exec

  alias_method :real_backtick, :`
  alias_method :`, :fake_backtick
end


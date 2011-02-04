class Select
  def options
    @options ||= []
  end

  def add_option(arg)
    options << arg
  end
end

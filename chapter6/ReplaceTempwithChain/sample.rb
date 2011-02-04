class Select
  def self.with_option(option)
    select = self.new
    select.options << option
    select
  end

  def options
   @options ||= []
  end


  def and(arg)
   options << arg
   self
  end
end

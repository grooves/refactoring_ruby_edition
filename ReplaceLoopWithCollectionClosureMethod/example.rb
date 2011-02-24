managers = []
employees.each do |e|  
  managers << e if e.manager?
end

managerOffices = []
employees.each do |e|
  managerOffices << e.office if e.manager?
end

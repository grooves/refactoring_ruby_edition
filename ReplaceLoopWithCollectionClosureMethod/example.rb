managerOffices = employees.select{|e|e.manager?}.collect{|e|e.office}

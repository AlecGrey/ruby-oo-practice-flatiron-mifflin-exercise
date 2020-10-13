require_relative "lib/Manager"
require_relative "lib/Employee"
require 'pry'


michael = Manager.new("Michael Scott", "sales", 42)
toby = Manager.new("Toby Flenderson", "human resources", 39)

dwight = michael.hire_employee("Dwight Schrute", 50000)
jim = michael.hire_employee("Jim Halpert", 50500)
andy = michael.hire_employee("Andy Bernard", 49500)
phyllis = michael.hire_employee("Phyllis Vance", 52000)
pam = michael.hire_employee("Pam Beesly", 45000)


binding.pry
puts "done"

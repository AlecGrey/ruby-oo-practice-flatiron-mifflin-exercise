class Employee

    attr_reader :name, :salary, :manager

    @@all = []

    def self.all
        @@all
    end

    def self.paid_over(pay)
        self.all.select {|employee| employee.salary > pay}
    end

    def self.find_by_department(dept)
        emp_obj = self.all.find {|employee| employee.manager.department == dept}
        emp_obj.name if emp_obj
    end

    def initialize(name, salary, manager)
        @name, @salary, @manager = name, salary, manager
        self.save
    end

    def save
        @@all << self
    end

    def manager_name
        self.manager.name
    end

    def tax_bracket
        self.class.all.select do |emp|
            emp.salary > (self.salary - 1000) && emp.salary < (self.salary + 1000) && emp != self
        end
    end

end

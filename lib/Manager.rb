class Manager

    attr_reader :name, :department, :age

    @@all = []

    def self.all
        @@all
    end

    def self.all_departments
        self.all.map {|manager| manager.department}
    end

    def self.average_age
        self.all.sum {|manager| Float(manager.age)} / self.all.length
    end

    def initialize(name, department, age)
        @name, @department, @age = name, department, age
        self.save
    end

    def save
        @@all << self
    end

    def employees

    end

    def hire_employee(name, salary)
        Employee.new(name, salary, self)
    end

end

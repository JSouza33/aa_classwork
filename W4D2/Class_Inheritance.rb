

class Employee 
    attr_reader :name, :title, :salary, :boss
    def initialize(name,title,salary,boss)
        @name   = name
        @title  = title
        @salary = salary
        @boss   = boss
    end
    def bonus(multiplier) 
        salary * multiplier
    end

end 


class Manager < Employee
    attr_reader :employees
    def initialize
        super()
    end 
    def bonus(multiplier)
        employees__bonuses = employees.map { |employee| employee.bonus(multiplier) }  # Makes an array of all sub-employees bonuses 
        return employees_bonuses.sum
    end

end

# ned    =  Manager.new(   "Ned",    "Founder", 1_000_000,    nil)
# darren =  Manager.new("Darren", "TA Manager",    78_000,    ned)
# shawna = Employee.new("Shawna",         "TA",    12_000, darren)
david  = Employee.new( "David",         "TA",    10_000, nil)

if __FILE__ == $PROGRAM_NAME
    p __FILE__
    p $PROGRAM_NAME
    # p ned.bonus(5)
    # p darren.bonus(4)
    p david.bonus(3)
end

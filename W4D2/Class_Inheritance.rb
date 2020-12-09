
class Employee 
    attr_reader :name, :title, :salary, :boss
    def initialize(name,title,salary,boss)
        @name   = name
        @title  = title
        @salary = salary
        @boss   = boss 
        boss.add_employee(self) if boss
    end
    def bonus(multiplier) 
        salary * multiplier
    end

end 


class Manager < Employee
    attr_reader :employees
    def initialize(*super_args)
        @employees = []
        super(*super_args)
    end 
    def bonus(multiplier)
        employees_bonuses = employees.map do |employee|   # Makes an array of all sub-employees bonuses # is_a?
            if employee.is_a?(Manager)
                employee.bonus(multiplier) + (employee.salary * multiplier)
            else
                employee.bonus(multiplier)
            end
        end
        return employees_bonuses.sum
    end 
    def add_employee(employee)
        employees << employee 
    end

end

ned    =  Manager.new(   "Ned",    "Founder", 1_000_000,    nil)
darren =  Manager.new("Darren", "TA Manager",    78_000,    ned)
shawna = Employee.new("Shawna",         "TA",    12_000, darren)
david  = Employee.new( "David",         "TA",    10_000, darren)

if __FILE__ == $PROGRAM_NAME
    p ned.bonus(5)
    p darren.bonus(4)
    p david.bonus(3)
end 

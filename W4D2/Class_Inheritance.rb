



class Employee #(name,title,salary,boss)
    attr_reader :name, :title, :salary, :boss 
    def bonus(multiplier) 
        salary * multiplier
    end

end 


class Manager < Employee
    attr_reader :employees 

    def bonus(multiplier)
        employees_bonuses = employees.map(&:bonus) # Makes an array of all sub-employees bonuses 
        

    end

end

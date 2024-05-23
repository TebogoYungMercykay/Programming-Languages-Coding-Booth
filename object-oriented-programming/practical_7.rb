# OOP in Ruby.

class Employee
    # Employee class
    attr_reader :earnings

    def initialize(baseSalary = 20000.00)
        @earnings = 0.0
        @baseSalary = baseSalary
        @baseSalaryPaid = false
    end

    def payEmployee
        if @baseSalaryPaid == false
            @earnings = @earnings + @baseSalary
            @baseSalaryPaid = true
        end
    end

    def newMonth
        @baseSalaryPaid = false
    end
end

class Manager < Employee
    # Manager class
    def initialize(bonus)
        super()
        @bonus = bonus
    end

    def payEmployee
        super
        @earnings = @earnings + @bonus
    end
end

class Programmer < Employee
    # Programmer class
    def initialize(percentage)
        baseSalary = 20000.00 * percentage
        super(baseSalary)
    end
end

class Team
    # Team class
    def initialize
        @listOfEmployees = []
    end

    def addMember(employee)
        if @listOfEmployees.length >= 2
            raise 'Only A Maximum of 2 Members Allowed'
        else
            @listOfEmployees << employee
        end
    end

    def payTeam
        @listOfEmployees.each do |employee|
            employee.payEmployee
        end
    end

    def newMonth
        @listOfEmployees.each do |employee|
            employee.newMonth
        end
    end

    def printEarnings
        @listOfEmployees.each do |member|
            puts "Employee earnings: #{member.earnings}"
        end
    end
end

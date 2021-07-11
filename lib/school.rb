# code here!

class School
    def initialize(name)
        @name = name
        @roster = {}
    end

    attr_accessor :name, :roster

    def add_student(name, grade)
        if @roster[grade] 
            @roster[grade] << name
        else 
            @roster[grade] = []
            @roster[grade] << name
        end
    end

    def grade(grade)
        @roster[grade]
    end

    def sort
        sorted_roster = @roster
        sorted_roster.each_key do |key|
        sorted_roster[key].sort!
        end
        return sorted_roster 
    end

end

school = School.new("Test School")

school.add_student("Peter G", 9)
school.add_student("Alexis W", 9)

school.add_student("Peter G", 10)
school.add_student("Zlexis W", 10)


g = school.sort
p g
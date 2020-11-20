# code here!
require 'pry'

class School

    attr_accessor :roster, :name
    
    def initialize(name)
        @roster = {}
        @name = name 
    end


    def add_student(name, grade)
        if @roster[grade]
            @roster[grade] << name
        else
            @roster[grade] = [name]
        end
    end

    def grade(grade_level)
        @roster[grade_level]
    end


    def sort
        roster.each_value { |student_list| student_list.sort!}  
        # using "sort!"" sorts the names within each array by grade
    end
        
end

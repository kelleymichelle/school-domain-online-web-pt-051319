require 'pry'
class School
    attr_accessor :name, :roster

    def initialize(name)
        @name = name
        @roster = {}
    end   

    def add_student(student, grade)
            if @roster[grade]
            @roster[grade] << student
        else     
            @roster[grade] = []
            @roster[grade] << student    
        end            
    end
    
    def grade(num)
        return @roster[num]
    end
    
    def sort
        order = {}
       @roster.sort.to_h.map do |grade, students|
        order[grade] = []
          order[grade] = students.sort
       end
       return order
    end    






end    
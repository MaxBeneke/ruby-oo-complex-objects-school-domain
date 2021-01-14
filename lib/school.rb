require 'pry'

class School

    attr_reader :name
    attr_accessor :roster

    def initialize(name)
        @name = name
        @roster = {}
    end

    def add_student(name, grade)

        if self.roster[grade]
            self.roster[grade] << name
        else 
            self.roster[grade] = []
            self.roster[grade] << name
        end
    end

    def grade(grade)
        self.roster[grade]
    end

    def sort
        self.roster.each {|key, value|
            value.sort!
        }
    end
end


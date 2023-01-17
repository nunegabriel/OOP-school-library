require "./person.rb"

class Student < Person
    attr_accessor :classroom

    def initialize(name, age, parent_permission)
    end

    def play_hooky
        return "¯\(ツ)/¯"
    end

end
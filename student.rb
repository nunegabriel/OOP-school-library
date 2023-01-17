require "./person.rb"

class Student < Person
  attr_accessor :classroom

  def initialize(name, age, parent_permission, classroom)
    @classroom = classroom
  end

  def play_hooky
    return "¯\(ツ)/¯"
  end
end

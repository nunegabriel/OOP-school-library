require './nameable'

class Person < Nameable
  attr_accessor :id, :name, :age, :parent_permission

  def initialize(_name, age, _parent_permission)
    super()
    @id = Random.rand(1..1000)
    @name = 'Unknown'
    @age = age
    @parent_permission = true
  end

  def can_use_services?
    age >= 18 || parent_permission
  end

  def correct_name
    name
  end

  private

  def of_age?
    age >= 18
  end
end

class Person
  attr_accessor :id, :name, :age, :parent_permission

  def initialize(_name, age, _parent_permission)
    @id = Random.rand(1..1000)
    @name = 'Unknown'
    @age = age
    @parent_permission = true
  end

  def of_age?
    age >= 18 || parent_permission
  end

  def can_use_services?
    age >= 18 || parent_permission
  end
end

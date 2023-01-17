require "./person.rb"

class Teacher < Person
    attr_accessor : specialization

    def initialize(specialization)
    @specialization = specialization 
    end

    def can_use_services
        true
    end

end
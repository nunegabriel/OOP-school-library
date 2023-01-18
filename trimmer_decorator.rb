require './base_decorator'


class TrimmerDecorator < BaseDecorator
    def correct_name
        @nameable.correct_name.length[0..9]            
    end
end

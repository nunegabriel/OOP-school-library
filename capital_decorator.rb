require './base_decorator'

class CapitalizeDecorator < BaseDecorator
  def correct_name
    corrected_name = @nameable.correct_name
    corrected_name.capitalize!
    puts corrected_name
    corrected_name
  end
end

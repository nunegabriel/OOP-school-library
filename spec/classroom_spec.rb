require './classroom'

describe Classroom do
  context 'Create a classroom' do
    classroom = Classroom.new 'Coaching classroom'

    it 'show classroom' do
      expect(classroom.label).to eq 'Coaching classroom'
    end
  end
end


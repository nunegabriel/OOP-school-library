require './student'

describe Student do
  context 'Create a student' do
    student = Student.new('Gabz', 12, true)

    it 'show Student name' do
      expect(student.name).to eq 'Gabz'
    end

    it 'show age' do
      expect(student.age).to eq 12
    end
  end
end

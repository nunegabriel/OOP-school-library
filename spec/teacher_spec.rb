require './teacher'

describe Teacher do
  context 'Create a teacher' do
    teacher = Teacher.new(12,'Gabz', 'COACH')

    it 'show Teacher name' do
      expect(teacher.name).to eq 'Gabz'
    end

    it 'show age' do
        expect(teacher.age).to eq 12
    end

  end
end


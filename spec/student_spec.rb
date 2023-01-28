require_relative '../student'

describe Student do
  let(:student) { Student.new('3', 'classroom', 'Mill', true) }

  describe '#initialize' do
    it 'creates a new Student instance' do
      expect(student).to be_an_instance_of(Student)
    end

    it 'sets the student name' do
      expect(student.name).to eq('Israel')
    end

    it 'sets the student age' do
      expect(student.age).to eq('30')
    end

    it 'sets the student parent permission' do
      expect(student.parent_permission).to be(true)
    end
  end

  describe '#classroom' do
    it 'returns the classroom' do
      expect(student.classroom).to eq('classroom')
    end
  end
end

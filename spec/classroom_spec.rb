require 'classroom'

describe Classroom do
  let(:classroom) { Classroom.new('classroom') }

  describe '#initialize' do
    it 'should be an instance of Classroom' do
      expect(classroom).to be_an_instance_of Classroom
    end

    it 'should have the label "classroom"' do
      expect(classroom.label).to eq 'classroom'
    end
  end

  describe '#add_student' do
    let(:student) { Student.new(30, 'Tash') }

    before do
      classroom.add_student(student)
    end

    it 'should add the student to the classroom' do
      expect(classroom.students.empty?).to be false
    end
  end
end

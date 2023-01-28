require './person'

describe Person do
  context 'Create a classrooom' do
    person = Person.new(12, 'Gabz')

    it 'show Person' do
      expect(person.name).to eq 'Gabz'
    end

    it 'show age' do
      expect(person.age).to eq 12
    end
  end
end

  describe '#correct_name' do
    it 'returns the name' do
      name = @new_person.correct_name
      expect(name).to eq('Sam')
    end
  end
end
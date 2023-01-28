describe Person do
    let(:person) { Person.new(24, 'Gabz') }
  
    describe '#initialize' do
      it 'creates a new Person instance' do
        expect(person).to be_an_instance_of(Person)
      end
    end
  
    describe '#age' do
      it 'returns the age of the person' do
        expect(person.age).to eq(24)
      end
    end
  
    describe '#name' do
      it 'returns the name of the person' do
        expect(person.name).to eq('Gabz')
      end
    end
  
    describe '#can_use_services?' do
      context 'when person is of age' do
        it 'returns true' do
          expect(person.can_use_services?).to eq(true)
        end
      end
  
      context 'when person is not of age but has parent permission' do
        it 'returns true' do
          person.age = 18
          expect(person.can_use_services?).to eq(true)
        end
      end
  
      context 'when person is not of age and does not have parent permission' do
        it 'returns false' do
          person.age = 15
          person.parent_permission = false
          expect(person.can_use_services?).to eq(false)
        end
      end
    end
  
    describe '#correct_name' do
      it 'returns the name of the person' do
        expect(person.correct_name).to eq('Gabz')
      end
    end
  
    describe '#add_rental' do
      let(:book) { double('book', rentals: []) }
      let(:date) { double('date') }
      it 'creates an instance of Rental' do
        expect(person.add_rental(book, date)).to be_an_instance_of(Rental)
      end
    end
  end
  
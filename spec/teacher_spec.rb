require_relative '../teacher'

describe Teacher do
  let(:teacher) { Teacher.new('38', 'Coach', 'Gabz') }

  it 'should be an instance of Teacher' do
    expect(teacher).to be_an_instance_of Teacher
  end

  it 'should have the correct name' do
    expect(teacher.name).to eq 'Gabz'
  end

  it 'should have the correct age' do
    expect(teacher.age).to eq '38'
  end

  it 'should have the correct specialization' do
    expect(teacher.specialization).to eq 'Coach'
  end

  it 'should be able to use services' do
    expect(teacher.can_use_services?).to eq(true)
  end
end

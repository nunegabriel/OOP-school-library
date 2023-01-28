require 'capitalize_decorator'

describe CapitalizeDecorator do
  let(:nameable) { double('nameable', correct_name: 'john') }
  let(:decorator) { CapitalizeDecorator.new(nameable) }

  describe '#correct_name' do
    it 'should capitalize the output of the decorated object' do
      expect(decorator.correct_name).to eq('John')
    end
  end
end

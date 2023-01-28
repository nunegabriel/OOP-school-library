require 'capitalize_decorator'

describe CapitalizeDecorator do
  let(:nameable) { double('nameable', name: 'ama') }
  let(:decorator) { CapitalizeDecorator.new(nameable) }

  describe '#name' do
    it 'should capitalize the output of the decorated object' do
      expect(decorator.name).to eq('Ama')
    end
  end
end

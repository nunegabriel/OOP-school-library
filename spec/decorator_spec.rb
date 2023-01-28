require 'decorator'

describe Decorator do
  let(:nameable) { double('Nameable', correct_name: 'Boy Nune') }
  subject { described_class.new(nameable) }
  
  it 'delegates #correct_name to the wrapped object' do
    expect(subject.correct_name).to eq 'Boy Nune'
  end
end

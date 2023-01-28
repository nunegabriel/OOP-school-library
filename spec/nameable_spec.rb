require 'nameable'

describe Nameable do
  subject { described_class.new }

  it '#correct_name raises a NotImplementedError' do
    expect { subject.correct_name }.to raise_error(NotImplementedError)
  end
end

require './book'

describe Book do
  context 'When testing the Book class' do
    book = Book.new('Gabz', 'John')

    it 'title of book' do
      expect(book.title).to eq 'Gabz'
    end
    it 'author of book' do
      expect(book.author).to eq 'John'
    end
  end
end

  describe '#author' do
    it 'returns the correct author' do
      expect(@book.author).to eql('Author')
    end
  end
end
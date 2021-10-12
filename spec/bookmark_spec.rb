require 'Bookmark'
describe Bookmark do
  describe '#list_bookmarks' do
    it 'returns the list of bookmarks' do

    expect(described_class.list_bookmarks).to eq(["http://www.makersacademy.com","http://www.youtube.com","www.yahoo.com","www.amazon.co.uk"])
    end
  end
end
require 'Bookmark'
describe Bookmark do
  describe '#list_bookmarks' do
    it 'returns the list of bookmarks' do

    expect(described_class.list_bookmarks).to eq(["link","lonk"])
    end
  end
end
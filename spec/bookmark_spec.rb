
require 'Bookmark'
describe Bookmark do
  describe '#list_bookmarks' do
    it 'returns the list of bookmarks' do
      connection = PG.connect(dbname: 'bookmark_manager_test')
      
      bookmark = Bookmark.create(url: "http://www.makersacademy.com", title: "Makers Academy")

      bookmarks = Bookmark.list_bookmarks

      expect(bookmarks.length).to eq 1
      expect(bookmarks.first).to be_a Bookmark
      expect(bookmarks.first.id).to eq bookmark.id
      expect(bookmarks.first.title).to eq 'Makers Academy'
      expect(bookmarks.first.url).to eq 'http://www.makersacademy.com'
    end
  end
  describe "#.create" do
    it "adds to the table a new link" do
      bookmark = Bookmark.create(url: 'www.facebook.com', title: 'Facebook')
      #persisted_data = persisted_data(id: bookmark.id)
      expect(bookmark).to be_a Bookmark
      #expect(bookmark.id).to eq persisted_data.first['id']
      expect(bookmark.title).to eq 'Facebook'
      expect(bookmark.url).to eq 'www.facebook.com'
    end
  end
end
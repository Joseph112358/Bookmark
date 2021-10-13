
require 'Bookmark'
describe Bookmark do
  describe '#list_bookmarks' do
    it 'returns the list of bookmarks' do
      connection = PG.connect(dbname: 'bookmark_manager_test')
      connection.exec("INSERT INTO bookmarks (url) VALUES ('http://www.makersacademy.com')");
      connection.exec("INSERT INTO bookmarks (url) VALUES ('http://www.youtube.com')");
      connection.exec("INSERT INTO bookmarks (url) VALUES ('www.yahoo.com')")
      connection.exec("INSERT INTO bookmarks (url) VALUES ('www.amazon.co.uk')")

    expect(described_class.list_bookmarks).to eq(["http://www.makersacademy.com","http://www.youtube.com","www.yahoo.com","www.amazon.co.uk"])
    end
  end
  describe "#.create" do
    it "adds to the table a new link" do
      bookmark = Bookmark.create(link: 'www.facebook.com', title: 'Facebook').first
      expect(bookmark['link']).to eq 'www.facebook.com'
      expect(bookmark['title']).to eq 'Facebook'
    end
  end
end
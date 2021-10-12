require 'pg'
class Bookmark

  def self.list_bookmarks()
    if ENV['ENVIRONMENT'] == 'test' 
    connection = PG.connect(dbname: 'bookmark_manager_test')
  else
    connection = PG.connect(dbname: 'bookmark_manager')
  end

    result = connection.exec("SELECT * FROM bookmarks;")
    result.map { |bookmark| bookmark['url']}
  end

  def self.create(link)
    @link = link  
  end
end
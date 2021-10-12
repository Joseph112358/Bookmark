require 'sinatra/base'
require 'sinatra/reloader'
require_relative './lib/Bookmark.rb'

class BookmarkManager < Sinatra::Base
  configure :development do
    register Sinatra::Reloader
  end
  
  get '/' do
    'Bookmark manager'
  end

  get '/bookmarks' do
    p ENV
    @bookmarks = Bookmark.list_bookmarks
    erb(:bookmarks)
  end

  run! if app_file == $0
end
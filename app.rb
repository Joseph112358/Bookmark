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
    @bookmarks = Bookmark.list_bookmarks
    erb(:index)
  end

  get '/add_bookmark' do
    erb(:add_bookmark)
  end

  post '/new_bookmark' do
    Bookmark.create(url: params[:url], title: params[:title])
    redirect '/bookmarks'
  end

  run! if app_file == $0
end
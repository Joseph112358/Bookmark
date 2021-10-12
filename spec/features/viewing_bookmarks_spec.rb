feature 'viewing bookmarks' do
  scenario 'visiting index page' do
    visit('/')
    expect(page).to have_content "Bookmark manager"
  end
  scenario 'viewing bookmarks' do
    visit('/bookmarks')
    expect(page).to have_content "http://www.makersacademy.com"
    expect(page).to have_content "http://www.youtube.com "
    expect(page).to have_content "www.yahoo.com"
  end
end
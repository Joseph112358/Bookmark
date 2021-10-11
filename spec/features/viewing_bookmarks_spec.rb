feature 'viewing bookmarks' do
  scenario 'visiting index page' do
    visit('/')
    expect(page).to have_content "Bookmark manager"
  end
  scenario 'viewing bookmarks' do
    visit('/bookmarks')
    expect(page).to have_content 'https://github.com/makersacademy/course/blob/main/apprenticeships_bookmark_manager/03_viewing_bookmarks.md'
  end
end
feature "Adding bookmarks" do
  scenario "shows the new added bookmark" do
    visit ('/add_bookmark')
    fill_in :link, with: "http://www.example.org"
    fill_in('title', with: 'Test Bookmark')
    click_button "Submit"
    visit ('/bookmarks')
    expect(page).to have_link('Test Bookmark', href: 'http://www.example.org')
  end
end
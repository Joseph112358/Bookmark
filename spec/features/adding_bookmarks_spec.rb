feature "Adding bookmarks" do
  scenario "shows the new added bookmark" do
    visit ('/add_bookmark')
    fill_in('url', with: 'http://www.testbookmark.com')
    fill_in('title', with: 'Test Bookmark')
    click_button "Submit"
    #visit ('/bookmarks')
    expect(page).to have_link('Test Bookmark', href: 'http://www.testbookmark.com')
  end
end
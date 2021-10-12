feature "Adding bookmarks" do
  scenario "shows the new added bookmark" do
    visit ('/add_bookmark')
    fill_in :link, with: "www.facebook.com"
    click_button "Submit"
    visit ('/bookmarks')
    expect(page).to have_content "www.facebook.com"
  end
end
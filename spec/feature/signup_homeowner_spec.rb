feature "Sign up" do
  scenario "add a homeowner" do
    # given
    visit '/'
    # when
    fill_in("email", with: "alistairphipps@gmail.com")
    fill_in("password", with: "password")
    fill_in("password_confirmation", with: "password")
    click_button("Submit")
    # then
    expect(page).to have_content "Welcome to Rubynb, you've signed up successfully with email 'alistairphipps@gmail.com'"
  end

  scenario "Add listing from homepage" do
    visit '/confirmation'
    click_button("Click here to add a listing")
    expect(page).to have_content "Add Listings"
  end

  scenario "View listings from homepage" do
    visit '/confirmation'
    click_button("Click here to view listings")
    expect(page).to have_content "View Listings"
  end

end

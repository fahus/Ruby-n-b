feature 'User can login' do
  scenario 'Signed up user login with email and password' do
    create_user
    login_user
    expect(page).to have_content "View Listings"
  end
  scenario 'Invalid email address' do
    visit ('/login')
    fill_in("email", with: "alistairphipps@gmaily.com")
    fill_in("password", with: "password")
    click_button "Submit"
    expect(page).to have_content "Email or Password not valid"
  end
end

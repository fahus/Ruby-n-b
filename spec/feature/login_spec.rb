feature 'User can login' do
  scenario 'Signed up user login with email and password' do
    create_user
    login_user
    expect(page).to have_content "View Listings"
  end

end

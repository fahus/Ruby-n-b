feature 'add listing' do
  scenario 'A user can sign up and add a listing' do
    create_user
    create_listing
    expect(page).to have_content 'Holiday Inn'
  end
  scenario ' A user can log in and add a listing' do
    create_user
    login_user
    create_listing
    expect(page).to have_content 'Holiday Inn'
  end
end

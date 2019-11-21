feature 'add listing' do
  scenario 'A user can add a listing' do
    create_listing
    expect(page).to have_content 'Holiday Inn'
  end
end

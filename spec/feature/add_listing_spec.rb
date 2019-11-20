feature 'add listing' do
  scenario 'A user can add a listing' do
    visit('/add')
    fill_in('name', with: 'Holiday Inn')
    fill_in('description', with: 'Cheap and cheerful, coffee and tea provided')
    fill_in('price', with: '250.00')
    fill_in('start_date', with: '2019-11-29')
    fill_in('end_date', with: '2019-12-02')
    click_button('Submit')

    expect(page).to have_content 'Holiday Inn'
  end
end

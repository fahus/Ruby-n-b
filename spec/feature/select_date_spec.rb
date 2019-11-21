feature 'it shows confirmation for date' do
  scenario 'it shows listing details when date requested' do
    create_listing
    click_button 'Click here for information on Holiday Inn'
    fill_in('date', with: '2019-12-01')
    click_button 'Select Date'
    expect(page).to have_content 'Holiday Inn'
    expect(page).to have_content 'alistairphipps@gmail.com'
    expect(page).to have_content '2019-12-01'
  end
end
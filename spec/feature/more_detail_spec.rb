
feature 'it shows specific listings in more detail' do
  scenario 'Shows existing listings' do
    visit ('/viewlistings')
    click_button("Hotel California")
    expect(page).to have_content "Hotel California"
    expect(page).to have_content "A lovely place to stay with lots of nice things like wifi and snacks"
    expect(page).to have_content "1000.00"
  end

  scenario 'shows Holiday Inn in more detail' do
    create_user
    create_listing
    visit ('/viewlistings')
    click_button 'Click here for info.'
    expect(page).to have_content "Holiday Inn"
    expect(page).to have_content "Cheap and cheerful, coffee and tea provided"
    expect(page).to have_content "250.00"
  end
end

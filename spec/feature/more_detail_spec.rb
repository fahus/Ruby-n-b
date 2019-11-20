
feature 'it shows specific listings in more detail' do
  scenario 'shows Hotel California in more detail' do
    visit ('/viewlistings')
    click_button 'Click here for information on Hotel California'
    expect(page).to have_content "Hotel California"
  end

  scenario 'shows Hotel California in more detail' do
    create_listing
    visit ('/viewlistings')
    click_button 'Click here for information on Holiday Inn'
    expect(page).to have_content "Holiday Inn"
  end
end

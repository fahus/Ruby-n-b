require './spec/web_helpers'


feature 'viewing listings' do
  scenario 'listings are visible' do

    visit '/viewlistings'
    expect(page).to have_content("Hotel California")
  end


  scenario 'displays multiple listings' do
    create_user
    create_listing
    visit '/viewlistings'
    expect(page).to have_content("Holiday Inn")
  end
end

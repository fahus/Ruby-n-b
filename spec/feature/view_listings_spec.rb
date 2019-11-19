require './spec/web_helpers'


feature 'viewing listings' do
  scenario 'listings are visible' do

    visit '/viewlistings'
    expect(page).to have_content("Hotel California")
  end

  scenario 'displays a short description of HomeOwner space' do
    visit '/viewlistings'
    expect(page).to have_content("A lovely place to stay with lots of nice things like wifi and snacks")
  end

  scenario 'displays the price of a HomeOwner space' do
    visit '/viewlistings'
    expect(page).to have_content("1000.00")
  end

  scenario 'displays multiple listings' do
    create_listing
    visit '/viewlistings'
    expect(page).to have_content("Holiday Inn")
    expect(page).to have_content("Cheap and cheerful, coffee and tea provided")
    expect(page).to have_content("250.00")
  end
end

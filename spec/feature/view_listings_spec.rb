

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

end

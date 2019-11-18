

feature 'viewing listings' do
  scenario 'listings are visible' do

    visit '/viewlistings'
    expect(page).to have_content("Hotel California")
  end
end

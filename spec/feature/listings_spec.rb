
feature 'Can view listings' do
  scenario 'displays 1 rental' do
    visit('/viewlistings')
    expect(page).to have_content("View listings")
  end
end

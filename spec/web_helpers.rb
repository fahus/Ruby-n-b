def create_listing
  visit('/add')
  fill_in('name', with: 'Holiday Inn')
  fill_in('description', with: 'Cheap and cheerful, coffee and tea provided')
  fill_in('price', with: '250.00')
  click_button('Submit')
end

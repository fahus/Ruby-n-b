def create_listing
  visit('/')
  fill_in("email", with: "alistairphipps@gmail.com")
  fill_in("password", with: "password")
  fill_in("password_confirmation", with: "password")
  click_button("Submit")
  click_button("Click here to add a listing")
  fill_in('name', with: 'Holiday Inn')
  fill_in('description', with: 'Cheap and cheerful, coffee and tea provided')
  fill_in('price', with: '250.00')
  click_button('Submit')
end

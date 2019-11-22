def create_user
  visit('/')
  fill_in("email", with: "alistairphipps@gmail.com")
  fill_in("password", with: "password")
  fill_in("password_confirmation", with: "password")
  click_button("Submit")
end

def create_listing
  click_button("Click here to add a listing")
  fill_in('name', with: 'Holiday Inn')
  fill_in('description', with: 'Cheap and cheerful, coffee and tea provided')
  fill_in('price', with: '250.00')
  fill_in('start_date', with: '2019-11-29')
  fill_in('end_date', with: '2019-12-02')
  click_button('Submit')
end

def login_user
  visit ('/login')
  fill_in("email", with: "alistairphipps@gmail.com")
  fill_in("password", with: "password")
  click_button "Submit"
end

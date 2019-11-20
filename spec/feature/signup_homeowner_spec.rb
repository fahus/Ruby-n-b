feature "Sign up" do
  scenario("add a homeowner") do
    # given
    visit '/'
    # when
    fill_in("email", with: "alistairphipps@gmail.com")
    fill_in("password", with: "password")
    fill_in("password_confirmation", with: "password")
    click_button("Submit")
    # then
    expect(page).to have_content "Welcome to Rubynb, you've signed up successfully with email 'alistairphipps@gmail.com'"
  end
end

feature 'add listing' do
  scenario 'A user can add a listing' do
    visit('/add')
    fill_in('peep')
end

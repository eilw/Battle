

feature 'Enter Names' do
  scenario 'submitting names' do
    visit ('/')
    fill_in :Player1_name, with: 'John'
    fill_in :Player2_name, with: 'John'
    click_button 'Submit'
    expect(page).to have_content 'John vs John'
  end
end
  feature 'hit points' do
    scenario 'displays hitpoints' do
    visit ('/')
    fill_in :Player1_name, with: 'John'
    fill_in :Player2_name, with: 'John'
    click_button 'Submit'
    expect(page).to have_content "John: 60/60HP"
  end
end

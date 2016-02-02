feature 'hit points' do
  scenario 'displays hitpoints' do
    sign_in_and_play
    expect(page).to have_content "John: 60/60HP"
  end
end

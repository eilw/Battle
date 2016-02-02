feature 'Enter Names' do
  scenario 'submitting names' do
    sign_in_and_play
    expect(page).to have_content 'John vs John'
  end
end



describe 'Enter Names' do
  it 'submitting names' do
    visit ('/')
    fill_in :Player1_name, with: 'John'
    fill_in :Player2_name, with: 'John'
    click_button 'Submit'
    expect(page).to have_content 'John vs John'
  end
end

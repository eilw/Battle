

describe 'Enter Names' do
  it 'submitting names' do
    visit ('/')
    fill_in :Player1_name, with: 'John'
    fill_in :Player2_name, with: 'John'
    click_button 'submit'
    find_field('Player1_name').value
  end
end

def sign_in_and_play
  visit ('/')
  fill_in :Player1_name, with: 'John'
  fill_in :Player2_name, with: 'John'
  click_button 'Submit'
end

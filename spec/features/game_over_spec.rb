feature 'game_over' do
  xscenario 'game over when one player reaches 0 HP' do
    sign_in_and_play
    40.times{attack}
    click_button('Attack')
    expect(page).to have_content('Congratulations Eirik - you won!')
  end
end

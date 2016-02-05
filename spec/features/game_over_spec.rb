feature 'game_over' do

  context 'when 1 player reaches 0hp first' do
    before do
      sign_in_and_play
      attack
      allow(Kernel).to receive(:rand).and_return(60)
    end

    scenario 'game over when one player reaches 0 HP' do
      click_button('Attack')
      expect(page).to have_content('Congratulations ')
    end
  end
end

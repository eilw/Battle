feature 'Attack' do
  scenario 'Get a confirmation for an attack on player 2' do
    sign_in_and_play
    click_button('Attack')
    expect(page).to have_content('Attack successful:')
  end

  scenario 'Attack on player 2 reduces HP with 10' do
    sign_in_and_play
    attack
    expect(page).to have_content('Emma: 50/60 HP')
  end

  scenario 'Attack on player 1 reduces HP with 10' do
    sign_in_and_play
    2.times{attack}
    expect(page).to have_content('Eirik: 50/60 HP')
  end

  scenario 'Being able to poison the other player' do
    sign_in_and_play
    click_button('Poison')
    expect(page).to have_content('Poison successful')
  end

  scenario 'Being able to paralyse the other player' do
    sign_in_and_play
    click_button('Paralyse')
    expect(page).to have_content('Paralyse successful')
  end

  scenario 'Being able to put the other player to sleep' do
    sign_in_and_play
    click_button('Sleep')
    expect(page).to have_content('Sleep successful')
  end

  scenario 'Being able to steal HP rom the other player' do
    sign_in_and_play
    click_button('Steal')
    expect(page).to have_content('Steal successful')
  end

end

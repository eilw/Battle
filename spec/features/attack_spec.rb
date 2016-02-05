feature 'Attack' do
  scenario 'Get a confirmation for an attack on player 2' do
    sign_in_and_play
    click_button('Attack')
    expect(page).to have_content('Attack on Emma was successful:')
  end

  scenario 'Attack on player 2 reduces HP' do
    sign_in_and_play
    attack
    expect(page).not_to have_content("Emma: 60/60 HP")
  end

  scenario 'Attack on player 1 reduces HP' do
    sign_in_and_play
    2.times{attack}
    expect(page).not_to have_content('Eirik: 60/60 HP')
  end

  scenario 'Being able to poison the other player' do
    sign_in_and_play
    click_button('Poison')
    expect(page).to have_content('Poison on Emma')
  end

  scenario 'Being able to paralyse the other player' do
    sign_in_and_play
    click_button('Paralyse')
    click_button('Continue')
    attack
    click_button('Attack')
    expect(page).to have_content('Attack on Emma')
  end

  scenario 'Being able to put the other player to sleep' do
    sign_in_and_play
    click_button('Sleep')
    expect(page).to have_content('Sleep on Emma')
  end

  scenario 'Being able to steal HP rom the other player' do
    sign_in_and_play
    click_button('Steal')
    expect(page).to have_content('Steal on Emma')
  end
end

feature 'Paralyse' do
  scenario 'opponent will skip a turn if paralysed' do
    sign_in_and_play
    click_button('Paralyse')
    click_button('Continue')
    expect(page).to have_content('Eirik is playing')
  end

  scenario 'opponent will skip a turn if paralysed' do
    sign_in_and_play
    allow(Kernel).to receive(:rand).and_return(10)
    click_button('Paralyse')
    click_button('Continue')
    2.times{attack}
    expect(page).to have_content('Emma is playing')
    expect(page).to have_content('Emma: 40/60 HP')
  end
end

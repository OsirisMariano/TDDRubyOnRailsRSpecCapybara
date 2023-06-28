require 'rails_helper'

RSpec.feature "Welcome", type: :feature do
  it 'Mostra a mensagem de Bem-Vindo' do
    visit(root_path)
    expect(page).to have_content('Bem-Vindo')
  end


end

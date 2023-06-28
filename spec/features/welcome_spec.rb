require 'rails_helper'

RSpec.feature "Welcome", type: :feature do
  it 'Mostra a mensagem de Bem-Vindo' do
    visit(root_path)
    expect(page).to have_content('Bem-Vindo')
  end

  it 'Verificar o link Cadastro de Cliente' do
    visit(root_path)
    expect(root_path)
    expect(find('ul li')).to have_link('Cadastro de Clientes')
  end
end

require 'rails_helper'

RSpec.feature "Customers", type: :feature do
  it 'Verifica Link Cadastro de Cliente ' do
    visit(root_path)
    expect(page).to have_link('Cadastro de Cliente')
  end

  it 'Verifica Link novo Cliente' do
    visit(root_path)
    click_on('Cadastro de Cliente')
    expect(page).to have_content('Listando Clientes')
    expect(page).to have_link('Novo Cliente')
  end

  it 'Verifica Formulário de Novo Cliente' do
    visit(customers_path)
    click_on('Novo Cliente')
    expect(page).to have_content('Novo Cliente')
  end
end

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

  it 'Cadastra um cliente válido' do
    visit(new_customer_path)
    customer_name = Faker::Name.name
    fill_in('customer_name', with: customer_name)
    fill_in('E-mail', with: Faker::Internet.email)
    fill_in('Phone', with: Faker::PhoneNumber.phone_number)
    attach_file('Avatar', "#{Rails.root}/spec/fixtures/avatar.png")
    choose(option: ['S', 'N'].sample)
    click_on('Criar cliente')
    expect(page).to have_content('Cliente cadastrado com sucesso')
    expect(Customer.last.name).to eq(customer_name)
  end
end

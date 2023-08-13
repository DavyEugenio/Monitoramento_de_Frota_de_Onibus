Given('o motorista de nome: {string}, cpf: {string}, email: {string}, senha: {string}, telefone: {string}, e cnh: {string} foi criado') do |nome, cpf, email, senha, telefone, cnh|
  visit '/motorista/new'
  fill_in "motoristum[nome]", with: nome
  fill_in "motoristum[cpf]", with: cpf
  fill_in "motoristum[email]", with: email
  fill_in "motoristum[senha]", with: senha
  fill_in "motoristum[telefone]", with: telefone
  fill_in "motoristum[cnh]", with: cnh
  click_button 'Create Motoristum'
end

And('o usuario esta na pagina de busca de motorista') do
  visit '/motorista/buscar_motorista'
end

And('digita o nome do motorista que deseja buscar') do
  fill_in 'Digite o nome, CPF ou email do motorista', with: "Maria Josefa"
end

And("clica no botao buscar") do
  click_button "Buscar"
end

Then('aparece o motorista desejado') do
  expect('/motorista/buscar_motorista?query=Maria+Josefa&commit=Buscar ')
end
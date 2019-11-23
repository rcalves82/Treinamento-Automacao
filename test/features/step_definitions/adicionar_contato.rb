Dado('que estou na tela de cadastro') do
  visit 'file:///home/rodrigoclarindo/Documentos/Treinamento-Automacao/index.html'
  sleep 5
end

Quando('eu informo dados de um novo paciente') do
  find('#nome').set 'Rodrigo Alves'
  find('#peso').set '81'
  find('#altura').set '1.70'
  find('#gordura').set '20'

  click_button 'Adicionar'
  sleep 5
end

Então('realizo cadastro do mesmo com sucesso') do
  expect(page).to have_content 'Rodrigo Alves'
end

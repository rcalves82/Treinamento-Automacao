# estou 
Dado('que estou na tela de cadastro') do
  visit 'file:///home/rodrigoclarindo/Documentos/Treinamento-Automacao/index.html'
  sleep 2
end

Quando('eu informo dados de um novo paciente') do
  find(:id, "nome").set "Juliana Cabral"
#    quando nao for id e nem name preencher com css
#   find(:css, "#nome").set "Juliana Cabral"
find(:id, "peso").set "70"
find(:id, "altura").set "1.70"

find(:id, "gordura").set "20"

click_button "Adicionar"

  sleep 2
end

Então('realizo cadastro do mesmo com sucesso') do
    # esse código busca algo que contem na pagina exatamente o que é esperado
    expect(page).to have_content "Juliana Cabral"
end


Quando("eu informo dados de um novo paciente exceto o nome") do
    find(:id, "nome").set ""
#    quando nao for id e nem name preencher com css
#   find(:css, "#nome").set "Juliana Cabral"
find(:id, "peso").set "70"
find(:id, "altura").set "1.70"
find(:id, "nome").set ""
find(:id, "gordura").set "20"

click_button "Adicionar"

  sleep 3
  end
  
  Então("mostrar mensagem que o nome é obrigatorio") do
    expect(page).to have_content "O nome não poder ser em branco!"

  end
  
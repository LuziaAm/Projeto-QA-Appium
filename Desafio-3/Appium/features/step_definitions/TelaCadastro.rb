

Given("que eu acesso o sistema como funcionario") do
  find_element(class:"android.widget.ImageButton")
end

When("eu clicar no botão adicionar") do
  find_element(class:"android.widget.ImageButton").click
  find_element(id: "br.com.dudstecnologia.cadastrodeclientes:id/floating_novo").click
end

Then("o formulário de cadastro é exibido") do
  tela_cadastro = find_element(id: "br.com.dudstecnologia.cadastrodeclientes:id/editNome")
  expect(tela_cadastro.displayed?).to be true
end

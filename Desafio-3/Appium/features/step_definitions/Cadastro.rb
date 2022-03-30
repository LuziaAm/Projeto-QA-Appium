Given("que eu acesso o sistema como funcionario") do
  find_element(class:"android.widget.ImageButton")
end

When("eu clicar no botão adicionar") do
  find_element(class:"android.widget.ImageButton").click
end

When("clicar no botão cadastrar novo") do
  find_element(id:"br.com.dudstecnologia.cadastrodeclientes:id/floating_novo").click
end

Then("o formulário de cadastro é exibido") do
  find_element(id: "br.com.dudstecnologia.cadastrodeclientes:id/action_bar_container")
end
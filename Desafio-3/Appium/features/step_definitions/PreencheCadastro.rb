
Given("acesso a tela de cadastro") do
    find_element(class:"android.widget.ImageButton").click
    find_element(id: "br.com.dudstecnologia.cadastrodeclientes:id/floating_novo").click
end

sleep 5
When('eu informar os campos') do
    find_element(id:"br.com.dudstecnologia.cadastrodeclientes:id/editNome").send_keys("Tester")
    find_element(id:"br.com.dudstecnologia.cadastrodeclientes:id/editRg").send_keys("98765432")
    find_element(id:"br.com.dudstecnologia.cadastrodeclientes:id/editCpf").send_keys("99988877766")
    find_element(id:"br.com.dudstecnologia.cadastrodeclientes:id/editEndereco").send_keys("Rua XPTO")
    find_element(id:"br.com.dudstecnologia.cadastrodeclientes:id/editNumero").send_keys("01")
    find_element(id:"br.com.dudstecnologia.cadastrodeclientes:id/editCep").send_keys("9909900")
    #find_element(id:"br.com.dudstecnologia.cadastrodeclientes:id/editCidade").send_keys("Manaus")

    #find_element(id:"br.com.dudstecnologia.cadastrodeclientes:id/spinnerEstados").click

    find_element(id:"br.com.dudstecnologia.cadastrodeclientes:id/editTelefone1").send_keys("92999889977")
    find_element(id:"br.com.dudstecnologia.cadastrodeclientes:id/editTelefone2").send_keys("92999889900")
    find_element(id:"br.com.dudstecnologia.cadastrodeclientes:id/editEmail").send_keys("tester@gmail")
end
  
When('clicar no botão salvar') do
    find_element(id: "br.com.dudstecnologia.cadastrodeclientes:id/btnSalvar").click
end

sleep 5  
Then('uma tela de sucesso é exibida') do
    alert = find_element(id: "br.com.dudstecnologia.cadastrodeclientes:id/alertTitle").displayed?
    expect(alert).to eq(true)
end


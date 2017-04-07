Dado(/^que eu estou no endpoint dos Correios$/) do
  
end

Quando(/^passo os dados necessários para GET$/) do
   @response = HTTParty.get("http://correiosapi.apphb.com/cep/07849010")

   puts 'O CEP '+ @response["cep"] + ' pertence a ' + @response["tipoDeLogradouro"] +' '+ @response["logradouro"] + ' - '+ @response["bairro"] +' - '+ @response["cidade"] +' / '+ @response["estado"]
end

Então(/^informa os dados do CEP$/) do
   puts @response.message
end
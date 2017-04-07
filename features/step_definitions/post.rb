Dado(/^que eu estou no endpoint \/comments$/) do
	  
end

Quando(/^passo os dados necessários para POST$/) do
  @options = {
  	postId: "501",
    id: "501",
 	name:"Força Nacional vai atuar no Rio de Janeiro", 
 	email:"astato@santander.com.br", 
 	bodys:"Soldados do Exército Brasileiro observam mulher enquanto fazem patrulha na praia de Copacabana"
 }.to_json
 
 @response = HTTParty.post("http://jsonplaceholder.typicode.com/comments", 
 	:body => @options,
 	:headers => {"Content-Type" => 'application/json'}
 	) 

end

Então(/^um comentário é criado$/) do
  puts @response.to_json, @response.message
  if @response.message != "Created"
  	fail 'Mensagem não foi criada corretamente'
  end
end
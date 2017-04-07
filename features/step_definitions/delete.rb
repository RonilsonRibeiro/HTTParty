Quando(/^passo os dados necessários para DELETE$/) do
  #@options = { id: "500"}.to_json

  @response = HTTParty.delete("http://jsonplaceholder.typicode.com/comments/500",   	
  	#:body => @options 	
  	)
end

Então(/^o comentário é deletado$/) do
  puts @response.message
  if @response.message != "OK"
  	fail 'Mensagem não foi deletada.'
  end
end
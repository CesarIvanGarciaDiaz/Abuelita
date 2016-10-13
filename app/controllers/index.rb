get '/' do
  @abuelita = params[:abuelita]
  erb :index
  # Visita app/views/index.erb
end

post '/abuelita' do
  user_input = params[:user_input]
  redirect to('/?abuelita="Bye hijo,TQM"') if user_input == "BYE"
  redirect to('/?abuelita="NO, NO DESDE 1983"') if user_input == user_input.upcase
  redirect to('/?abuelita="HUH?! NO TE ESCUCHO, HIJO!"') if user_input == user_input.downcase
end

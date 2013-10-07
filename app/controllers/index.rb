get '/' do

  if params[:grandma] == params[:grandma].upcase
    @grandma = 'WOOHOO'
  else
    @grandma = "Speak up sonny!"
  end
  
  # Look in app/views/index.erb
  
  erb :index
end

post '/grandma' do
  # "Implement the /grandma route yourself.<br>Params: <code>#{params.inspect}</code>"
  redirect to("/?grandma=#{params[:user_input]}")
end

require 'sinatra'

enable :sessions

get "/" do
	#puts session.inspect
	if session["user"] && session["email"]
		@user = session["user"]
		@email = session["email"]

		erb :post
	else
      @closed_session = session["closed_session"]
      
      erb :index
  end
end

post "/login" do
  @user = params["user"]
  @email = params["email"]
  session.store("user", @user)
  session.store("email", @email)

  erb :post
end

get "/log_out" do
  session.delete("user")
  session.delete("email")
  session.store("closed_session", true)
  redirect "/"
end
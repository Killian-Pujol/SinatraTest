#User: Killian Pujol
#Date: 17/04/2018
	
require "sinatra"
require "sinatra/reloader" if development?
require_relative "database"

# Page d'accueil regroupant les articles
get "/" do
	@database = DB
	erb :home
end

# Page présentant plus en détail les articles (avec les commentaires)
get "/:id" do
	@database = DB
	@comments = COMMENTS
	@id = request.path_info.tr('/', '').to_i
	erb :comments
end



require "sinatra"
require "sinatra/reloader" if development?
require "pry"

require_relative("lib/article.rb")
require_relative("lib/content_website.rb")

article_1 = Article.new("First Title", Time.now, "This is the first content")
article_2 = Article.new("Second Title", Time.now, "This is the second content")
article_3 = Article.new("Third Title", Time.now, "This is the third content")
article_4 = Article.new("Fourth Title", Time.now, "This is the fourth content")
article_5 = Article.new("Fifth Title", Time.now, "This is the fifth content")
article_6 = Article.new("Sixth Title", Time.now, "This is the sixth content")
article_7 = Article.new("Seventh Title", Time.now, "This is the seventh content")
article_8 = Article.new("Eighth Title", Time.now, "This is the eighth content")

the_website = ContentWebsite.new

the_website.add_articles(article_1)
the_website.add_articles(article_2)
the_website.add_articles(article_3)
the_website.add_articles(article_4)
the_website.add_articles(article_5)
the_website.add_articles(article_6)
the_website.add_articles(article_7)
the_website.add_articles(article_8)

get "/" do
	# @the_blog = the_blog 
	# @post_array = post_array
	@show_articles = the_website.get_articles

	erb :home

end

get "/post_details/:id" do 

	@the_one_post = the_website.get_articles[params[:id].to_i]
	
	erb :details

end

get "/create_post" do

	erb :create_post

end

post "/submit" do 
	new_article = Article.new(params[:title], Time.now, params[:content])
	the_website.add_articles(new_article)

	redirect to ("/")
end




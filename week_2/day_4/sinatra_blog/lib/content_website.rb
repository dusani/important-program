class ContentWebsite
	def initialize
		@articles = []

	end

	def add_articles(new_article)
		@articles.push(new_article)

	end

	def get_articles
		@articles
		
	end
end

	
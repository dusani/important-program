class Blog
	def initialize
		@blog_posts = []
	end

	def add_blog_posts(the_post)
		@blog_posts.push(the_post)
	end

	def publish_front_page
		puts "Welcome to Iron Blog"
		puts""
		@blog_posts.each do |display_post|
			p display_post.title
			p display_post.date
			puts"*********************"
			p display_post.text
			puts "--------------------"
	end
		
	end
end

class Post
	attr_accessor :title, :date, :text
	def initialize(title, date, text)
		@title = title
		@date = date
		@text = text
	end
end


blog = Blog.new
blog.add_blog_posts Post.new("First News", "10-10-16", "News for the first floor")
blog.add_blog_posts Post.new("Second News", "10-10-16", "News for the second floor")
blog.add_blog_posts Post.new("Third News", "10-10-16", "News for the third floor")

blog.publish_front_page
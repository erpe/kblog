module Kblog
  module ArticlesHelper
		
		def display_latest_articles(num=1)
			articles = Article.order('created_at DESC').limit(num)
			render(:partial => 'kblog/articles/article', :collection => articles)
		end
  end
end

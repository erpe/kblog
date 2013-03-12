module Kblog
  module ArticlesHelper
		
		def display_latest_articles(num=1,limit=0)
			truncate = limit > 0 ? limit : nil
			render(:partial => 'kblog/articles/article', :collection => limit_articles(num), :locals => { :limit => truncate} )
		end

		def limit_articles(num=1)
			Article.order('created_at DESC').limit(num)
		end

  end
end

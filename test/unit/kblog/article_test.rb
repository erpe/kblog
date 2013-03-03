require 'test_helper'

module Kblog
  class ArticleTest < ActiveSupport::TestCase
    test "kind of article" do
		assert_instance_of(Article, Article.new)
    end
		test "save an article" do
			assert Article.create(:title => "Ein Test", :content => "Hier kommt was inhaltlihces")
		end
		test "wont save article without title" do
			article = Article.new(:title => nil, :content => "Hier kommt was inhaltlihces")
			assert ! article.save 
		end
  end
end

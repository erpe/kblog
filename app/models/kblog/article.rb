module Kblog
	class Article < ActiveRecord::Base
		attr_accessible :content, :title
		validates :title, :presence => true
	
  		def self.user_rights(user)
         case Kblog.auth_type
         when 'basic'
            true
         when 'role'
         	user.respond_to?(:roles) && user.roles.map { |r| r.to_s }.include?( Kblog.auth_role )  
         end
		end


	end
end

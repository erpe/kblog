module Kblog
	class Article < ActiveRecord::Base
		attr_accessible :content, :title
		validates :title, :presence => true
	
  		def self.has_create_rights(user)
         case Kblog.auth_type
         when 'basic'
            false
         when 'role'
         	user.respond_to?(:roles) && user.roles.map { |r| r.name }.includes?( Kblog.auth_role )  
         end
		end


	end
end

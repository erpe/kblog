require "kblog/engine"

module Kblog
	mattr_accessor :auth_type
   mattr_accessor :authname
	mattr_accessor :authpassword
	mattr_accessor :auth_role
	mattr_accessor :user_class
end

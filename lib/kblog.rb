require "kblog/engine"

module Kblog
	mattr_accessor :authentication
   mattr_accessor :authname
	mattr_accessor :authpassword
	mattr_accessor :auth_type
	mattr_accessor :auth_role
end

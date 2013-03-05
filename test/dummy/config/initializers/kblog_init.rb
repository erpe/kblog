ActiveSupport.on_load :action_controller do
	helper Kblog::ArticlesHelper
end

Kblog.auth_type = 'basic'
#Kblog.auth_type = 'basic'#
#Kblog.auth_type = 'role'

if Kblog.auth_type == 'basic'
	Kblog.authname = 'blogger'
	Kblog.authpassword = 'changeme'
end

if Kblog.auth_type == 'role'
	# expects a User-class which responds to 'role'
	# change to necessary role of current_user
	Kblog.auth_role == 'blogger' 
end

require 'RedCloth'
require 'will_paginate'


ActiveSupport.on_load :action_controller do
	helper Kblog::ArticlesHelper
end

# select either section basic or role-based authentication
#
#########################################################
# role-based rights to create/alter blog-articles       #
#########################################################
Kblog.auth_type = 'role'   
Kblog.auth_role = 'blogger'   # role needed to alter blogs
Kblog.user_class = 'User'     # class of blog-author

#########################################################
# http-basic-auth                                       #
#########################################################
#Kblog.auth_type == 'basic'
#Kblog.authname = 'blogger'
#Kblog.authpassword = 'changeme'


require 'RedCloth'
require 'will_paginate'


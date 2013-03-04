ActiveSupport.on_load :action_controller do
	helper Kblog::ArticlesHelper
end

Kblog.authentication = 'basic' # or nil
Kblog.authname = 'blogger'
Kblog.authpassword = 'changeme'

require 'RedCloth'
require 'will_paginate'


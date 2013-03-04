ActiveSupport.on_load :action_controller do
	helper Kblog::ArticlesHelper
end

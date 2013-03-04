class KblogGenerator < Rails::Generators::Base
	source_root File.expand_path('../templates', __FILE__)

  	def create_initializer_file
		puts "creating file config/initializer/kblog_init.rb - adopt to your needs!"
		copy_file "initializer.rb", "config/initializers/kblog_init.rb"
  	end
end

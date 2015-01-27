class FileHandler

	# def self.read file_name
	# 	File.read(File.expand_path("../../files/#{file_name}", __FILE__))
	# end

	# def self.create dir, file, content
	# 	File.open("#{dir}/#{file}", 'w+') {|f| f.write(content)}
	# end

	def self.copy file_name, dir_name, new_file_name
		FileUtils.cp File.expand_path("../../files/#{file_name}", __FILE__), "#{dir_name}/#{new_file_name}"
	end

	def minimal_template dir_name
		puts "Creating minimal Sinatra project '#{dir_name}'..."

		Dir.mkdir dir_name
		puts "Created ".green + "#{dir_name}/"

		FileHandler.copy "config.ru", dir_name, "config.ru"
		puts "Created ".green + "#{dir_name}/config.ru"

		FileHandler.copy "Gemfile", dir_name, "Gemfile"
		puts "Created ".green + "#{dir_name}/Gemfile"

		FileHandler.copy "app.min.rb", dir_name, "app.rb"
		puts "Created ".green + "#{dir_name}/app.rb"

		puts "Done!".green
	end

	def default_template dir_name
		puts "Creating default Sinatra project '#{dir_name}'..."
		
		Dir.mkdir dir_name
		puts "Created ".green + "#{dir_name}/"

		FileHandler.copy "config.ru", dir_name, "config.ru"
		puts "Created ".green + "#{dir_name}/config.ru"

		FileHandler.copy "Gemfile", dir_name, "Gemfile"
		puts "Created ".green + "#{dir_name}/Gemfile"

		File.open("#{dir_name}/README.md", 'w+')
		puts "Created ".green + "#{dir_name}/README.md"

		Dir.mkdir "#{dir_name}/app"
		puts "Created ".green + "#{dir_name}/app/"

		FileHandler.copy "app.rb", "#{dir_name}/app", "app.rb"
		puts "Created ".green + "#{dir_name}/app.rb"

		Dir.mkdir "#{dir_name}/app/views"
		puts "Created ".green + "#{dir_name}/app/views/"

		FileHandler.copy "layout.html.erb", "#{dir_name}/app/views", "layout.html.erb"
		puts "Created ".green + "#{dir_name}/app/views/layout.html.erb"

		FileHandler.copy "index.html.erb", "#{dir_name}/app/views", "index.html.erb"
		puts "Created ".green + "#{dir_name}/app/views/index.html.erb"	

		Dir.mkdir "#{dir_name}/public"
		puts "Created ".green + "#{dir_name}/public/"

		Dir.mkdir "#{dir_name}/public/js"
		puts "Created ".green + "#{dir_name}/public/js"

		File.open("#{dir_name}/public/js/app.js", 'w+')
		puts "Created ".green + "#{dir_name}/public/js/app.js"

		Dir.mkdir "#{dir_name}/public/css"
		puts "Created ".green + "#{dir_name}/public/css"

		File.open("#{dir_name}/public/css/style.css", 'w+')
		puts "Created ".green + "#{dir_name}/public/js/style.css"

		puts "Done!".green
	end

end
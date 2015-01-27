class FileHandler
	def self.read file_name
		File.read(File.expand_path("../../files/#{file_name}", __FILE__))
	end

	def self.create dir, file, content
		File.open("#{dir}/#{file}", 'w+') {|f| f.write(content)}
	end

	def prepare_file_contents
		@config_ru = FileHandler.read "config.ru"
		@gemfile = FileHandler.read "Gemfile"
		@app_rb = FileHandler.read "app.rb"
	end

	def minimal_template dir_name
		prepare_file_contents
		puts "Creating minimal Sinatra project '#{dir_name}'..."

		Dir.mkdir dir_name
		puts "Created ".green + "#{dir_name}/"

		FileHandler.create dir_name, "config.ru", @config_ru
		puts "Created ".green + "#{dir_name}/config.ru"

		FileHandler.create dir_name, "Gemfile", @gemfile
		puts "Created ".green + "#{dir_name}/Gemfile"

		FileHandler.create dir_name, "app.rb", @app_rb
		puts "Created ".green + "#{dir_name}/app.rb"

		puts "Done!"
	end
end
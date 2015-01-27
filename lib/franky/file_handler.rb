class FileHandler

	# def self.read file_name
	# 	File.read(File.expand_path("../../files/#{file_name}", __FILE__))
	# end

	# def self.create dir, file, content
	# 	File.open("#{dir}/#{file}", 'w+') {|f| f.write(content)}
	# end

	def self.copy dir_name, file_name
		FileUtils.cp File.expand_path("../../files/#{file_name}", __FILE__), "#{dir_name}/#{file_name}"
	end

	def minimal_template dir_name
		puts "Creating minimal Sinatra project '#{dir_name}'..."

		Dir.mkdir dir_name
		puts "Created ".green + "#{dir_name}/"

		FileHandler.copy dir_name, "config.ru"
		puts "Created ".green + "#{dir_name}/config.ru"

		FileHandler.copy dir_name, "Gemfile"
		puts "Created ".green + "#{dir_name}/Gemfile"

		FileHandler.copy dir_name, "app.rb"
		puts "Created ".green + "#{dir_name}/app.rb"

		puts "Done!".green
	end

end
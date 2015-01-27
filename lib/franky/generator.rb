require 'franky/file_handler'
require 'thor'
require 'colorize'

module Franky
	class Generator < Thor

		desc "new [dir_name] [options]", "creates a project with minimal setup"
		option :minimal, type: :boolean, default: false, aliases: "-m"
		def new dir_name
			if Dir.exist? dir_name
				puts "Directory with name '#{dir_name}' already exists. Please rename.".red
				return
			end
			
			if options[:minimal]
				FileHandler.new.minimal_template dir_name
			end
		end
	end
end
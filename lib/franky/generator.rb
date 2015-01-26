require 'franky/file_handler'
require 'thor'
require 'colorize'

module Franky
	class Generator < Thor

		desc "min", "creates a project with minimal setup"
		def min
			dir_name = "test"
			if Dir.exist? dir_name
				puts "Directory with name '#{dir_name}' already exists. Please rename.".red
			else
				FileHandler.new.minimal_template dir_name
			end
		end		
	end
end
require 'franky/file_handler'
require 'thor'
require 'colorize'

module Franky
	class Base < Thor

		desc "new [dir_name] [options]", "creates a project with minimal setup"
		option :minimal, type: :boolean, default: false, aliases: "-m"
		def new dir_name=""

			return unless dir_valid?(dir_name)

			if options[:minimal]
				FileHandler.new.minimal_template dir_name
			end
		end

		private

			def dir_valid?(dir_name)
				if dir_name == ""
					puts "You have to sign a directory name.\n".red + "Example: franky new my_project"
					return false
				end				
		
				if Dir.exist? dir_name
					puts "Directory with name '#{dir_name}' already exists. Please rename.".red
					return false
				end

				true
			end

	end
end
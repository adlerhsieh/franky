require 'franky/file_handler'
require 'thor'
require 'colorize'

module Franky
	class Base < Thor

		desc "new [dir_name] [options]", "creates a project with minimal setup"
		option :minimal, type: :boolean, default: false, aliases: "-m"
		def new dir_name=nil
			unless dir_name_given?(dir_name)
				dir_name = specify_dir
			end

			dir_name = dir_name.gsub("\n", "")
			return unless dir_valid?(dir_name)

			if options[:minimal]
				FileHandler.new.minimal_template(dir_name)
			else
				FileHandler.new.default_template(dir_name)
			end
		end

		# 將--version和-v指令轉入__print_version
		# prefix底線是為了避免變成一般的thor command
		map %w[--version -v] => :__print_version
		desc "--version, -v", "show version"
		def __print_version
			puts Franky::VERSION
		end

		private

			def dir_name_given?(dir_name)
				dir_name == nil ? false : true
			end

			def specify_dir
				print "specify a directroy name: "
				# 只要command有帶參數，Ruby預設gets會去抓第一個變數當做檔案名稱，所以要指明$stdin.gets當做user input
				dir_name = $stdin.gets
				dir_name
			end

			def dir_valid?(dir_name)
				if dir_name == ""
					puts "No directory name is given"
					return false
				end

				if Dir.exist? dir_name
					puts "'#{dir_name}' already exists. Please rename.".red
					return false
				end

				true
			end

	end
end
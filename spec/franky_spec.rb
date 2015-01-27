require 'franky'

describe Franky do
	it "example" do
		ARGV = ["new", "hello"]
		Franky::Base.start ARGV
		expect(Dir.exists? "hello").to be_truthy
	end
end
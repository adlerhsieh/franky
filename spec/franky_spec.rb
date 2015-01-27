require 'franky'

FakeFS do
	describe Franky do
		it "example" do
			expect(Franky::Base.new).to eq(1)
		end
	end
end
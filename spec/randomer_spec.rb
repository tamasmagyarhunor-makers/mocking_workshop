require 'randomer'

RSpec.describe Randomer do
    context "has random_number method" do
        it "returns a random number, with mocking" do
            randomer = Randomer.new
            allow(randomer).to receive(:rand).and_return(5)

            expect(randomer.random_number).to eq(5)
        end

        xit "returns a random number, without mocking" do
            randomer = Randomer.new

            expect(randomer.random_number).to eq(5)
        end
    end
end
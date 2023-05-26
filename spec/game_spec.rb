require 'game'

RSpec.describe Game do
    context "initializes with a Randomer" do
       it "instantiates a Randomer object on initialization" do
            game = Game.new(Randomer.new)

            expect(game.randomer).to be_a(Randomer)
        end
    end

    context "it returns a random number" do
        it "returns an Integer" do
            game = Game.new(Randomer.new)

            expect(game.get_random_number).to be_a(Integer)
        end

       it "returns an integer (times 2)" do
            randomer = Randomer.new
            game = Game.new(randomer)
            allow(randomer).to receive(:random_number).and_return(5)

            expect(game.get_random_number).to eq(10)
        end
    end
end

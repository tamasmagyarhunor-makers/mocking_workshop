class Game
    attr_reader :randomer

    def initialize(randomer)
        @randomer = randomer
    end

    def get_random_number
        number = @randomer.random_number
        return number * 2
    end
end

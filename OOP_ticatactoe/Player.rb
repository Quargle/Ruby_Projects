
class Player
    attr_reader :name, :piece
    def initialize(name, piece, board)
        @name = name
        @piece = piece
        @board = board
    end

    def get_square
        loop do
            square = ask_for_square
            if @board.add_symbol(square, @piece)
                break
            end
        end
    end

    def ask_for_square
        print "#{@name}(#{@piece}), pick a square:"
        puts
        return gets.chomp.to_i
    end
end
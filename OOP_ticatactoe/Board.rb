
class Board
    def initialize
        @board = Array.new(10, ' ')
    end

    def render
        puts('   |   |')
        puts(' ' + @board[7].to_s + ' | ' + @board[8].to_s + ' | ' + @board[9].to_s)
        puts('   |   |')
        puts('-----------')
        puts('   |   |')
        puts(' ' + @board[4].to_s + ' | ' + @board[5].to_s + ' | ' + @board[6].to_s)
        puts('   |   |')
        puts('-----------')
        puts('   |   |')
        puts(' ' + @board[1].to_s + ' | ' + @board[2].to_s + ' | ' + @board[3].to_s)
        puts('   |   |')    
    end


    def add_symbol(square, piece)
        if square_available?(square)
            @board[square] = piece
            return true
        else
            return false
        end
    end

    def square_available?
        if square_on_board?(square) and square_free?(square)
            return true
        else
            return false
        end
    end

    def square_on_board?(square)
        if (1..9).include? square
            true
        else
            false
        end
    end

    def square_available?(square)
        if @board[square] == ' '
            return true
        else
            return false
        end
    end

    #winning combination?
    def winning_combination?(piece)
        winning_horizontal?(piece) or
        winning_vertical?(piece) or
        winning_diagonal?(piece)
    end

    def winning_horizontal?(piece)
        [@board[1], @board[2], @board[3]].all?{|element| element == piece} or
        [@board[4], @board[5], @board[6]].all?{|element| element == piece} or
        [@board[7], @board[8], @board[9]].all?{|element| element == piece}
    end

    def winning_vertical?(piece)
        [@board[1], @board[4], @board[7]].all?{|element| element == piece} or
        [@board[2], @board[5], @board[8]].all?{|element| element == piece} or
        [@board[3], @board[6], @board[9]].all?{|element| element == piece}
    end

    def winning_diagonal?(piece)
        [@board[1], @board[5], @board[9]].all?{|element| element == piece} or
        [@board[3], @board[5], @board[7]].all?{|element| element == piece}
    end

    def full?
        (1..9).each do |square|
            if @board[square] == ' '
                return false
            end
        end
        return true

    end

end
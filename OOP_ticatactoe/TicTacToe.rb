
require_relative "Board.rb"
require_relative "Player.rb"


class TicTacToe
    def initialize
        #set up the board
        @board = Board.new

        #set up players
        @player_x = Player.new("Madame X", :x, @board)
        @player_y = Player.new("Mister Y", :y, @board)
        
        #set starting player
        @current_player = @player_x
    end

    def play

        loop do
            @board.render
            @current_player.get_square
            break if check_game_over

            switch_players
        end
    end

    def check_game_over
        check_victory or check_draw
    end

    def check_victory
        if @board.winning_combination?(@current_player.piece)
            puts "Congratulations #{@current_player.name}, you have won!"
            return true
        else
            return false
        end
    end

    def check_draw
        if @board.full?
            puts "You have drawn."
            return true
        else
            return false
        end
    end

    def switch_players
        if @current_player == @player_x
            @current_player = @player_y
        else
            @current_player = @player_x
        end
    end
end



t = TicTacToe.new
t.play


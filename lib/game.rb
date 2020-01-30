class Game
    attr_accessor :player1, :player2, :board_hash, :board_to_show, :still_going_on

    def initialize(name1, name2)
        @player1 = Player.new(name1)
        @player2 = Player.new(name2)
        @board = Board.new
        @board_to_show = Show.new(@board.hash)
        @still_going_on = true
    end

    def round
        correct_input = false
        victory = false
        while !correct_input && !victory
            puts @board_to_show.show_board(@board.hash)
            puts "\n\n"
            puts "#{@player1.name}, à toi de jouer !"
            puts "Quelle case veux tu marquer ?"
            print "> "
            box = gets.chomp
            correct_input = @board.modify(box, 1)
            puts "\n\n"
            victory = check_victory
        end
        correct_input = false
        while !correct_input && !victory
            puts @board_to_show.show_board(@board.hash)
            puts "\n\n"
            puts "#{@player2.name}, à toi de jouer !"
            puts "Quelle case veux tu marquer ?"
            print "> "
            box = gets.chomp
            correct_input = @board.modify(box, 2)
            puts "\n\n"
            victory = check_victory
        end
        @still_going_on = false if victory
    end

    def check_victory
        if (@board.hash['A1'] == 'X' && @board.hash['A2'] == 'X' && @board.hash['A3'] == 'X') || (@board.hash['B1'] == 'X' && @board.hash['B2'] == 'X' && @board.hash['B3'] == 'X') || (@board.hash['C1'] == 'X' && @board.hash['C2'] == 'X' && @board.hash['C3'] == 'X') || (@board.hash['A1'] == 'X' && @board.hash['B1'] == 'X' && @board.hash['C1'] == 'X') || (@board.hash['A2'] == 'X' && @board.hash['B2'] == 'X' && @board.hash['C2'] == 'X') || (@board.hash['A3'] == 'X' && @board.hash['B3'] == 'X' && @board.hash['C3'] == 'X') || (@board.hash['A1'] == 'X' && @board.hash['B2'] == 'X' && @board.hash['C3'] == 'X') || (@board.hash['A3'] == 'X' && @board.hash['B2'] == 'X' && @board.hash['C3'] == 'X')
            puts "\n\n"
            puts @board_to_show.show_board(@board.hash)
            puts "\n\n"
            puts "!!!!! Victoire de #{@player1.name} !!!!!"
            puts "\n\n"
            return true
        elsif (@board.hash['A1'] == 'O' && @board.hash['A2'] == 'O' && @board.hash['A3'] == 'O') || (@board.hash['B1'] == 'O' && @board.hash['B2'] == 'O' && @board.hash['B3'] == 'O') || (@board.hash['C1'] == 'O' && @board.hash['C2'] == 'O' && @board.hash['C3'] == 'O') || (@board.hash['A1'] == 'O' && @board.hash['B1'] == 'O' && @board.hash['C1'] == 'O') || (@board.hash['A2'] == 'O' && @board.hash['B2'] == 'O' && @board.hash['C2'] == 'O') || (@board.hash['A3'] == 'O' && @board.hash['B3'] == 'O' && @board.hash['C3'] == 'O') || (@board.hash['A1'] == 'O' && @board.hash['B2'] == 'O' && @board.hash['C3'] == 'O') || (@board.hash['A3'] == 'O' && @board.hash['B2'] == 'O' && @board.hash['C3'] == 'O')
            puts "\n\n"
            puts @board_to_show.show_board(@board.hash)
            puts "\n\n"
            puts "!!!!! Victoire de #{@player2.name} !!!!!"
            puts "\n\n"
            return true
        else
            return false
        end
    end

    
end
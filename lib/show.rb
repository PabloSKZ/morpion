class Show 
    attr_accessor :board_to_show, :line1, :line2, :line3, :line4, :line5

    # Affiche le board
    def initialize(board_hash)
        @line0 = "  1   2   3"
        @line1 = "A " + board_hash["A1"] + " | " + board_hash["A2"] + " | " + board_hash["A3"]
        @line2 = " " + ("-" * 11)
        @line3 = "B " + board_hash["B1"] + " | " + board_hash["B2"] + " | " + board_hash["B3"]
        @line4 = " " + ("-" * 11)
        @line5 = "C " + board_hash["C1"] + " | " + board_hash["C2"] + " | " + board_hash["C3"]
    end
 
    def show_board(board_hash)
        @line0 = "  1   2   3"
        @line1 = "A " + board_hash["A1"] + " | " + board_hash["A2"] + " | " + board_hash["A3"]
        @line2 = " " + ("-" * 11)
        @line3 = "B " + board_hash["B1"] + " | " + board_hash["B2"] + " | " + board_hash["B3"]
        @line4 = " " + ("-" * 11)
        @line5 = "C " + board_hash["C1"] + " | " + board_hash["C2"] + " | " + board_hash["C3"]
        return "#{@line0}\n#{@line1}\n#{@line2}\n#{@line3}\n#{@line4}\n#{@line5}\n"
    end
end
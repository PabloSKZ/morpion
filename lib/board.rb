class Board
    attr_accessor :hash

    def initialize
        @hash = { "A1" => BoardCase.new.value.to_s, "A2" => BoardCase.new.value.to_s, "A3" => BoardCase.new.value.to_s, 
                  "B1" => BoardCase.new.value.to_s, "B2" => BoardCase.new.value.to_s, "B3" => BoardCase.new.value.to_s, 
                  "C1" => BoardCase.new.value.to_s, "C2" => BoardCase.new.value.to_s, "C3" => BoardCase.new.value.to_s } 
    end

    def modify(box, player)
        if player == 1 && @hash[box] == "."
            @hash[box] = "X"
            return true
        elsif player == 2 && @hash[box] == "."
            @hash[box] = "O"
            return true
        else 
            puts "\n\n"
            puts "!!! Case non disponible !!!"
            puts "\n\n"
            return false
        end
    end
end
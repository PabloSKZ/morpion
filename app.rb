require 'bundler'
require 'pry'
Bundler.require

require_relative 'lib/game'
require_relative 'lib/player'
require_relative 'lib/board'
require_relative 'lib/board_case'
require_relative 'lib/show'

#Accueil
puts "-" * 13
puts "|  MORPION  |"
puts "-" * 13
puts"\n\n"
puts "Joueur 1, rentre ton blaze : "
print "> "
name1 = gets.chomp
puts"\n\n"
puts "!!! Ok #{name1}, tu joueras avec les X !!!!"
puts"\n\n"
puts "Joueur 2, rentre ton blaze : "
print "> "
name2 = gets.chomp
puts"\n\n"
puts "!!! Ok #{name2}, tu joueras avec les O !!!"
puts"\n\n"
puts "Prêt ??? (Press [Enter])"
gets.chomp
puts"\n\n"
puts"\n\n"
new_game = true

while new_game
    my_game = Game.new(name1, name2)
    while my_game.still_going_on
        my_game.round
    end
    puts"\n\n"
    puts "Nouvelle Partie ??? (o/n)"
    print "> "
    input = gets.chomp
    if input == "o" || input == "O"
        new_game = true
    else
        new_game = false
    end
    puts"\n\n"
end
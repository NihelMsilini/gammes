TDOUT.sync = true # DO NOT REMOVE
# Auto-generated code below aims at helping you parse
# the standard input according to the problem statement.
# game loop
loop do
    #Initialiser de nouvelles variables i_h et max_h
    max_h = 0
    i_h = 0
    8.times do |i|
        mountain_h = gets.to_i # represents the height of one mountain, from 9 to 0. Mountain heights are provided from left to right.
        if mountain_h > max_h then
            max_h = mountain_h
            i_h = i
        end
    end
    puts i_h
end

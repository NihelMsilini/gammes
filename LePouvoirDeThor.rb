STDOUT.sync = true # DO NOT REMOVE
# Auto-generated code below aims at helping you parse
# the standard input according to the problem statement.
# ---
# Hint: You can use the debug stream to print initialTX and initialTY, if Thor seems not follow your orders.

# light_x: the X position of the light of power
# light_y: the Y position of the light of power
# initial_tx: Thor's starting X position
# initial_ty: Thor's starting Y position
@light_x, @light_y, @initial_tx, @initial_ty = gets.split(" ").collect {|x| x.to_i}

mv_x = @initial_tx
mv_y = @initial_ty
# game loop
loop do
    remaining_turns = gets.to_i # The remaining amount of turns Thor can move. Do not remove this line.
    
    # Write an action using puts
    # To debug: STDERR.puts "Debug messages..."
    dir_x = ""
    dir_y = ""
    
    if mv_x > @light_x
        dir_x = "W"
        mv_x -= 1
        elsif mv_x < @light_x
        dir_x = "E"
        mv_x += 1
    end
    if mv_y > @light_y
        dir_y = "N"
        mv_y -= 1
    elsif mv_y < @light_y
        dir_y = "S"
        mv_y += 1
    end
    
    puts dir_y.concat(dir_x)# A single line providing the move to be made: N NE E SE S SW W or NW
end

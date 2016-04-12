# Auto-generated code below aims at helping you parse
# the standard input according to the problem statement.

@message = gets.chomp
tableau = [] #char table
chars = "" 
arr = [] #binary table
z = 0
tableau = @message.split("").map{|x| x} #seperate chars

    while z < tableau.length do
        char = tableau[z].unpack("B*")[0] # binary conversion for each char
        array = char.split("").map{|x| x.to_i} # binary table for each char
        array = array.drop(1) # to eliminate the first char 0
        arr = arr.concat(array) # concat of the binary tables for each char
        z = z + 1
    end
        i = 0
        j = 0
        result = ""
    while i < arr.length do
        if arr[i] == 1 # if it is equal to 1
            result = result.concat"0 0" # concatenate it wth o o
            j = j+1 # count how much 1 we have
            while arr[j] == 1
                 result = result.concat"0" # if found, concatenate another 0
                 j=j+1
             end  
         end  
         if arr[i] == 0
          result = result.concat"00 0"
          j=j+1 
            while arr[j] == arr[i]
                  result = result.concat"0"
                  j=j+1 
             end
         end
         result = result.concat" "
         i=j
    end
    result = result.strip #remove the last space
    puts result

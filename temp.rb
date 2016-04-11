@n = gets.to_i # the number of temperatures to analyse
@temps = gets.chomp # the n temperatures expressed as integers ranging from -273 to 5526
@temps_array = [] # declare an empty array
@temps_array = @temps.split(" ").map {|x| x.to_i} 
min = 5526 #initialize a minimal value
# code block
if @n == 0 # if we we don't have any entry, we get a 0
    puts "0"
else
       for i in @temps_array do # go through the whole array
        if i.abs < min.abs # find an abs value inferior to min
           min = i # take it
    end
end
    if @temps_array.include? min.abs # test if the positif value of min exists in the array
              min = min.abs # if so, take the positif value
    end
           puts min # display the positif value
end

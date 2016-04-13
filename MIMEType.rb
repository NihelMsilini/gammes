# Auto-generated code below aims at helping you parse
# the standard input according to the problem statement.
@n = gets.to_i # Number of elements which make up the association table.
@q = gets.to_i # Number Q of file names to be analyzed.
ext_count = 0 
j = 0
l = 0
tab_ext = [] # extension table
tab_MIME = [] # MIME table
tab_file = [] # file name put in a table
tab_file_ext = [] # extension from a file name
tab = [] 
@n.times do 
# ext: file extension
# mt: MIME type.
ext, mt = gets.split(" ") 
tab_ext[ext_count] = ext # extension table
tab_ext[ext_count]= tab_ext[ext_count].upcase # upcase the whole extensions
tab_MIME[ext_count]= mt 
ext_count += 1
end
# For each of the Q filenames, display on a line the corresponding MIME type. 
#If there is no corresponding type, then display UNKNOWN.
@q.times do
fname = gets.chomp # One file name per line
tab = fname.split("") 
    if !fname.include? "." 
        fname="jhhgfuhgf"
    else
        tab_file = fname.split(".")
        if tab.last == "."
            tab_file_ext[j] ="kkjiuh"
        else
            tab_file_ext[j] = tab_file[tab_file.length-1].upcase
        end
    end
 j = j + 1
end
while l < @q do
    if tab_ext.include? tab_file_ext[l]
        m = 0
            while m < @n do
                if tab_ext [m] == tab_file_ext[l]
                    puts tab_MIME[m]
                end
                m = m + 1
            end
    else 
        puts "UNKNOWN"
end
    l = l + 1
end

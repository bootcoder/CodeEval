######################
##### BootCoder ######
######################
## Hunter T. Chapman #
######################

######################
#### Black  Spot  ####
######################


#######################
###  PSEUDO   CODE  ###
#######################

# INPUT SAMPLE

# John Sara Tom Susan | 3
# John Tom Mary | 5

# OUTPUT SAMPLE

# Sara
# Mary

# Start counting at the first person in the array
# Count until the number is reached
# Remove the person whose active when number is reached
# Keep going until only 1 remains
# http://blogs.forrester.com/f/b/users/JGOWNDER/highlander_0.jpg
# Print the remaining name

#######################
### Initial Solution ##
#######################

def black_spot(line)
  parts = line.chomp.split("|")

  @names = parts[0].split(" ")
  @count = parts[1].strip.to_i

  until @names.length == 1
    current_index = 0
    until @count == current_index
      @names.each_with_index do |name, index|
        current_index += 1
        if current_index == @count
          @names.delete_at(index)
          break
        end
      end
    end
  end

  puts @names[0]

end

File.open('input_sample.txt').each_line do |line|
# File.open(ARGV[0]).each_line do |line|
  black_spot(line)
end



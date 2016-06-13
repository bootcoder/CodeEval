######################
##### BootCoder ######
######################
## Hunter T. Chapman #
######################
# Next Non Repeating #
######################



# INPUT SAMPLE

# yellow
# tooth

# OUTPUT SAMPLE

# y
# h

#######################
### Initial Solution ##
#######################

File.open('input_sample.txt').each_line do |line|
# File.open(ARGV[0]).each_line do |line|
  chars = line.chomp.split("")
  chars.each do |char|
    if chars.count(char) == 1
      puts char
      break
    end
  end
end



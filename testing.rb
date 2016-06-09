######################
##### BootCoder ######
######################
# Hunter T. Chapman  #
######################
##     TESTING      ##
######################



# INPUT SAMPLE

# Heelo Codevval | Hello Codeeval
# hELLO cODEEVAL | Hello Codeeval
# Hello Codeeval | Hello Codeeval

# OUTPUT SAMPLE
#
Low
# Critical
# Done

##########################
##  Initial   Solution  ##
##########################

def convert_bug_count(count)
  case count
  when (7..40)
    return "Critical"
  when (5..6)
    return "High"
  when (3..4)
    return "Medium"
  when (1..2)
    return "Low"
  when 0
    return "Done"
  end
end

File.open('input_sample.txt').each_line do |line|
# File.open(ARGV[0]).each_line do |line|
  line = line.chomp.split(" | ")
  coders = line[0].split(//)
  designers = line[1].split(//)
  count = 0
  coders.each_with_index do |element,index|
    count += 1 unless element == designers[index]
  end
  puts convert_bug_count(count)
end

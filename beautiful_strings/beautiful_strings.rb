######################
##### BootCoder ######
######################
## Hunter T. Chapman #
######################
# Beautiful Strings  #
######################



# INPUT SAMPLE

input_sample = [
  "ABbCcc",
  "Good luck in the Facebook Hacker Cup this year!",
  "Ignore punctuation, please :)",
  "Sometimes test cases are hard to make up.",
  "So I just go consult Professor Dalves",
  "tingslasjdlkf12093809 : 098akdshf  $"
]

# OUTPUT SAMPLE

# 152
# 754
# 491
# 729
# 646

# DEPENDENCIES
# require 'awesome_print'

##########################
### Initial    Solution ##
##########################

# input_sample.each do |line|
File.open(ARGV[0]).each_line do |line|

  beautiful_total = 0
  beautiful_rating = 26
  value_dictionary = Hash.new(0)

  letter_collection = line.downcase.scan(/[a-z]/i).sort

  letter_collection.each do |element|
    value_dictionary[element] += 1
  end

  # letter_collection.each_with_object(Hash.new(0)) { |element,counts| counts[element] += 1 }

  value_dictionary.sort_by {|k,v| -v}.each do |score|
    beautiful_total += score[1] * beautiful_rating
    beautiful_rating -= 1
  end

  p beautiful_total

end

######################
##### BootCoder ######
######################
## Hunter T. Chapman #
######################
##  primes below N  ##
######################



# INPUT SAMPLE

input_sample = [
  10,
  20,
  100
]

# OUTPUT SAMPLE

# 2,3,5,7
# 2,3,5,7,11,13,17,19
# 2,3,5,7,11,13,17,19,23,29,31,37,41,43,47,53,59,61,67,71,73,79,83,89,97

##########################
### Initial    Solution ##
##########################

require 'prime'
input_sample.each do |line|
# File.open(ARGV[0]).each_line do |line|
  # p line
  result = ""
  Prime.each do |prime|
    break if prime >= line.to_i
    result.concat("#{prime},")
  end

  puts result[0..-2]
end

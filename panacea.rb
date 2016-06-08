######################
##### BootCoder ######
######################
## Hunter T. Chapman #
######################
##     PANACEA      ##
######################



# INPUT SAMPLE

# 64 6e 78 | 100101100 11110
# 5e 7d 59 | 1101100 10010101 1100111
# 93 75 | 1000111 1011010 1100010

# OUTPUT SAMPLE

# True
# True
# False


##########################
### Refactored Solution ##
##########################

# def calculate_totals(hexs, binarys)
#   hex_total = hexs.reduce(0) {|sum,num| sum += num.to_i(16)}
#   binary_total = binarys.reduce(0) {|sum,num| sum += num.to_i(2)}
#   puts hex_total <= binary_total ? "True" : "False"
# end

# # File.open('input_sample.txt').each_line do |line|
# File.open(ARGV[0]).each_line do |line|
#   line = line.chomp.split("|")
#   hexs = line[0].split(" ")
#   binarys = line[1].split(" ")
#   calculate_totals(hexs, binarys)
# end


#######################
### Initial Solution ##
#######################

nums = []
# require 'awesome_print'
File.open('input_sample.txt').each_line do |line|
# File.open(ARGV[0]).each_line do |line|
  line = line.chomp.split("|")
  hexs = line[0].split(" ")
  binarys = line[1].split(" ")
  nums << {hexs: hexs, binarys: binarys}
end

def calculate_totals(nums)
  results = []
  nums.each do |line|

    hex_total = 0
    binary_total = 0

    line[:hexs].each do |hex|
      hex_total += hex.to_i(16)
      p hex.to_i(16)
    end
    puts "----"
    line[:binarys].each do |binary|
      binary_total += binary.to_i(2)
      p binary.to_i(2)
    end
    p "VIRUS_____total: #{hex_total}"
    p "ANTIVIRUS_total: #{binary_total}"
    result = hex_total <= binary_total ? true : false
    results << result
  end
  results
end



calculate_totals(nums).each do |result|
  p result
end

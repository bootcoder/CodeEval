######################
##### BootCoder ######
######################
## Hunter T. Chapman #
######################

######################
## Sum  of Primes   ##
######################

# INPUT SAMPLE

# NA

# OUTPUT SAMPLE

# 3682913

#######################
###  PSEUDO   CODE  ###
#######################

# Print the sum of the first 1000 prime numbers

#######################
###  Seems  Cheaty  ###
#######################

# require 'Prime'
# def sum_of_primes(count)
#   # This works
#   # p Prime.first(count).reduce(:+)

#   # A little more verbose, still super cheaty
#   total = 0
#   Prime.first(count).each do |prime|
#     # p prime
#     total += prime
#   end
#   p total
# end

#######################
### Initial Solution ##
#######################

def is_prime?(num)
 i = 2
 loop do
  return true if i == num
  return false if num % i == 0
  i += 1
 end
end

def sum_of_primes(count)
  num = 2
  primes = []

  until primes.length == count
    primes << num if is_prime?(num)
    num += 1
  end

  puts primes.reduce(:+)
end

sum_of_primes(1000)

######################
##### BootCoder ######
######################
## Hunter T. Chapman #
######################
##   RollerCoster   ##
######################



# INPUT SAMPLE

# To be, or not to be: that is the question.
# Whether 'tis nobler in the mind to suffer.
# The slings and arrows of outrageous fortune.
# Or to take arms against a sea of troubles.
# And by opposing end them, to die: to sleep.

# OUTPUT SAMPLE

# To Be, Or NoT tO bE: tHaT iS tHe QuEsTiOn.
# WhEtHeR 'tIs NoBlEr In ThE mInD tO sUfFeR.
# ThE sLiNgS aNd ArRoWs Of OuTrAgEoUs FoRtUnE.
# Or To TaKe ArMs AgAiNsT a SeA oF tRoUbLeS.
# AnD bY oPpOsInG eNd ThEm, To DiE: tO sLeEp.

##########################
### Initial    Solution ##
##########################

require 'pry-byebug'

File.open('input_sample.txt').each_line do |line|
# File.open(ARGV[0]).each_line do |line|
line.chomp!
result = ""
upCaseIt = true
thing = line.chars.map! do |char|
  if upCaseIt && ('a'..'z').to_a.include?(char.downcase)
    upCaseIt = false
    char.upcase
  elsif !upCaseIt && ('a'..'z').to_a.include?(char.downcase)
    upCaseIt = true
    char.downcase
  else
    char
  end
end

# line.each_char do |char|

# end
# binding.pry
p thing.join("")
end
































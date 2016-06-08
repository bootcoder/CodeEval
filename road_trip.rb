######################
##### BootCoder ######
######################
## Hunter T. Chapman #
######################
##     Road Trip    ##
######################



# INPUT SAMPLE

# Rkbs,5453; Wdqiz,1245; Rwds,3890; Ujma,5589; Tbzmo,1303;
# Vgdfz,70; Mgknxpi,3958; Nsptghk,2626; Wuzp,2559; Jcdwi,3761;
# Yvnzjwk,5363; Pkabj,5999; Xznvb,3584; Jfksvx,1240; Inwm,5720;
# Ramytdb,2683; Voclqmb,5236;

# OUTPUT SAMPLE

# 1245,58,2587,1563,136
# 70,2489,67,1135,197
# 1240,2344,1779,357,279
# 2683,2553

all_trips = []

File.open('input_sample.txt').each_line do |line|
# File.open(ARGV[0]).each_line do |line|
  trip = []
  line = line.chomp.split(";")
  line.each do |city|
    trip << city.split(",")[1].to_i
  end
  all_trips << trip
end

all_trips.each do |trip|
  trip.sort!
  city_difference = [trip[0]]
  for i in 0..trip.length do
    break if trip[i+1] == nil
    city_difference << trip[i+1] - trip[i]
  end
  puts city_difference.join(",")
end

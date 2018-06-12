h = {"x": 1, "y":2}

h['z']=3
h.delete(:y)
h.each {|letra,valor|  puts 'yeeah' if letra=='z'}
a =h.invert
h =a
puts h
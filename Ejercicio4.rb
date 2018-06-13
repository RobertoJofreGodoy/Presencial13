personas = ["Carolina", "Alejandro", "Maria Jesus", "Valentin"]
edades = [32, 28, 41, 19]

personas_hash= personas.zip(edades).to_h

puts personas_hash

def promedio(hashtag)
	num=0
	contador=0
	hashtag.each{|nom,edad| 
		num += edad 
		contador+=1}
	return num/contador
end

puts promedio(personas_hash)
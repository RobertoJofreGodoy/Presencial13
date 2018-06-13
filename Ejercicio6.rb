restaurant_menu = { "Ramen" => 3, "Dal Makhani" => 4, "Coffee" => 2 }

expensive = restaurant_menu.max_by {|plato,valor|valor}
cheap = restaurant_menu.min_by{|plato,valor|valor}

puts "el plato mas caro es: #{expensive[0]}" 
puts "el plato mas barato es: #{cheap[0]}"

def promedio(menu)
	num=0
	contador=0
	menu.each{|plato,valor| 
		num += valor 
		contador+=1}
	return num/contador
end

puts "El promedio del valor de los platos es: #{promedio(restaurant_menu)}"

names = []
values = []
	restaurant_menu.each {|plato,valor|
		names.push plato
		values.push valor
	}
puts names
puts values 

iva = values.map {|i| i.to_f * 1.19}
restaurant_menu=names.zip(iva).to_h

puts restaurant_menu 

pares= names.select{|i| i.split.size > 1}
puts pares
restaurant_menu.each {|plato,valor|
	if  plato == pares[0]
		restaurant_menu[plato]= valor.to_f * 0.8
	end
}

puts restaurant_menu 
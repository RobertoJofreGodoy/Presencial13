productos = {'bebida' => 850, 'chocolate' => 1200, 'galletas' => 900, 'leche' => 750}
productos.each { |producto, valor| puts " El producto #{producto} vale: #{valor}" }

productos[:cereal] =  2200
productos['bebida'] = 2000
puts productos

productos_array = productos.to_a
puts productos_array

productos.delete('galletas')
puts productos

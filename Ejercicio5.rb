meses = ['Enero', 'Febrero', 'Marzo', 'Abril', 'Mayo']
ventas = [2000, 3000, 1000, 5000, 4000]
mayor =0
menor =0

h = meses.zip(ventas).to_h
h_invertido = h.invert
h = h_invertido

a = h.max_by {|valor,mes|valor}
puts h
puts a
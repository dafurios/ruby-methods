# ### Ejercicio 1
# El siguiente algoritmo es algo redundante, optimízalo:
#
# ~~~rb
# def par(x)
#   if x % 2 == 0
#     return true
#   else
#     return false
#   end
# end
#
# puts par(2)
# puts par(3)
# puts par(4)
# puts par(5)

# el retorno no se utiliza en ruby (no es nesario) ejemplo: return

def par(x)
  if x % 2 == 0
     true
  else
     false
  end
end

puts par(2)
puts par(3)
puts par(4)
puts par(5)
#
# ### Ejercicio 2
# El siguiente algoritmo debería mostrar 'sí' o 'no', sin embargo muestrar
 # error. Se pide identificar el error y corregirlo:
#
# ~~~rb
# def random
#   result = [true, false].sample
#   puts result
# end
#
# if random == true
#   puts 'sí'
# elsif random == false
#   puts 'no'
# else
#   puts 'error'
# end
# ~~~
puts
puts
puts

# def random
#   result = [true, false].sample
#   puts result
# end
#
# if random == true
#
# else random == false
# end

def random
  result = [true, false].sample
end

res = random


if res
  puts 'sí'
elsif !res
  puts 'no'
else
  puts 'error'
end

puts
puts
puts

# ### Ejercicio 3
# Escriba un método llamado **check5** que devuelva *true* cuando se le
 # pase un número mayor a 5 y *false* en caso contrario.
#
# ~~~rb
# puts check5(5) # Debería ser false
# puts check5(6) # Debería ser true
# ~~~
# puts
# puts
# puts

def check5(num)
  num > 5
end

puts check5(5) # Debería ser false
puts check5(6) # Debería ser true

### Ejercicio 4
# # Crear un método que imprima un saludo. El método debe recibir un
# parámetro, si ese parámetro es el string "Hola" el método debe imprimir
# "Hola Mundo".

puts
puts
puts "ingrese la palabra 'hola'"
def saludo(hola)
  if hola == "hola"
    puts "Hola Mundo!"
  else
    puts "vuelva a intentarlo"
  end
end

var = gets.chomp

puts saludo(var)
puts
puts

### Ejercicio 5
# Crear un método que reciba como parámetro dos números enteros positivos
#  e imprima los números pares que existen entre esos dos números.
puts
puts

def rango(x,y)
  for i in (x..y)
    puts i if i.even?
  end
end

puts rango(5,10)
puts rango(0,20)
puts rango(0,10)

# ### Ejercicio 6
# Un método puede llamar a otros métodos:
#
# ~~~rb
# def draw_line(size)
#   '*' * size
# end
#
# def draw_lines(size)
#   size.times { }
# end
#
# draw_line 2
# draw_lines 10
# ~~~
#
# Modifica el siguiente código para que al ejecutar un sólo método se
#  imprima:
#
# ~~~
# *****
# *****
# *****
# *****
# *****
# ~~~
puts
puts

def draw_line(size)
  puts '*' * size
end

def draw_lines(size)
  size.times do
    draw_line(size)
  end
end

 draw_lines 5


puts
puts

# ### Ejercicio 7
# Dado el siguiente string y carácter, crear un método que reciba como
# parámetro el string y el carácter. Luego debe buscar si existe ese
# caracter dentro del string.
#
# ~~~rb
# cadena = 'Hola Mundo!'
# caracter = 'o'
# ~~~
#
# > Hint: El método .include? de un string busca si un caracter o string
#  dado está contenido en éste.

cadena = 'Hola Mundo!'
caracter = 'o'

def var(x,y)
  x.include?(y) # esto retorna un true or false
end

puts var('Hola Mundo!','o')
puts var('jajaja','a')
puts var('jajaja','z')
puts var('Hola Mundo!','z')

# ### Ejercicio 8
# Construir un arreglo de los nombres de todos sus compañeros y en
# base a él:
#
# 1. Imprimir todos los elementos que excedan más de 5 caracteres.
# 2. Crear un arreglo nuevo con todos los elementos en minúscula.
# 3. Crear un método que devuelva un arreglo con la cantidad de caracteres
# que tiene cada nombre.
puts
puts

curso = ['Hugo','Felipe','Luis','Claudio','Adrian','Patricia','Yannick','Fernanda','Franco','Felipe','Heraldo','Arturo','Milenko','Daniel','Daniel','Ignacio','Kevin','Norman','Roberto','Patricio','Matias']

# Ejercicio 8 . 1
# 1. Imprimir todos los elementos que excedan más de 5 caracteres.


curso.each do |i|
  if i.length > 5
    puts i
  end
end

# Ejercicio 8 .2
# 2. Crear un arreglo nuevo con todos los elementos en minúscula.

puts
puts

b = []

curso.each do |i|
  b.push(i.downcase)
end
puts b
puts
puts


# ejercio 8 . 3
# 3. Crear un método que devuelva un arreglo con la cantidad de caracteres
# que tiene cada nombre.


def contar(x)
nuevo = []
  x.each do |i| nuevo.push(i.length)
  end
  nuevo
end

puts contar(curso)
puts
puts
puts

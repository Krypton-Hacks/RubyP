#!/usr/bin/env ruby
require "colorize"

colores = [
  :black, :light_black,
  :red, :light_red,
  :green, :light_green,
  :yellow, :light_yellow,
  :blue, :light_blue,
  :magenta, :light_magenta,
  :cyan, :light_cyan,
  :white, :light_white
]

efectos = [
  :blink,
  :bold,
  # :concealed,  # Elimina el efecto :concealed
  :underline,
  :reverse_color
]

# Imprimir "Hola mundo" en diferentes colores y efectos
puts "Hola mundo".colorize(:default)
puts "Hola mundo".on_black

colores.each do |color|
  puts "Hola mundo".colorize(color)
end

efectos.each do |efecto|
  puts "Hola mundo".colorize(:red).send(efecto)
end

colores.each do |color|
  efectos.each do |efecto|
    puts "Hola mundo".colorize(color).send(efecto)
  end
end

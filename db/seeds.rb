# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Tarea.create(nombre: 'Elevar volantin', subida:"10-30-1999",  :asset => File.new(Rails.root.join('path', 'to', 'somefile.jpg')))
Tarea.create(nombre: 'Bailar cueca', subida:"10-30-1999",  :asset => File.new(Rails.root.join('path', 'to', 'somefile.jpg')))
Tarea.create(nombre: 'Actividad 6',subida:"10-30-1999",  :asset => File.new(Rails.root.join('path', 'to', 'somefile.jpg')))
Tarea.create(nombre: 'Actividad 7', subida:"10-30-1999",  :asset => File.new(Rails.root.join('path', 'to', 'somefile.jpg')))
Tarea.create(nombre: 'Actividad 8', subida:"10-30-1999",  :asset => File.new(Rails.root.join('path', 'to', 'somefile.jpg')))
Tarea.create(nombre: 'Actividad 9', subida:"10-30-1999",  :asset => File.new(Rails.root.join('path', 'to', 'somefile.jpg')))

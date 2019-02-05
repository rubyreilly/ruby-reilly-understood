# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Animal.destroy_all

#create 12 animals
Animal.create({animal_type:'dog'})
Animal.create({animal_type:'lizard'})
Animal.create({animal_type:'bird'})
Animal.create({animal_type:'cat'})
Animal.create({animal_type:'frog'})
Animal.create({animal_type:'sheep'})
Animal.create({animal_type:'giraffe'})
Animal.create({animal_type:'monkey'})
Animal.create({animal_type:'lion'})
Animal.create({animal_type:'snake'})
Animal.create({animal_type:'bear'})
Animal.create({animal_type:'turtle'})

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require "open-uri"

puts "Cleaning database..."
Dino.destroy_all
User.destroy_all

puts "Creating dinos..."

gerard = User.create(first_name: "Gerard", last_name: "Junior", password: "azerty", email: "gerard@zoo.com")
jeanfrancois = User.create(first_name: "Jean-Francois", last_name: "Martin", password: "azerty", email: "jean-francois@zoo.com")
xavier = User.create(first_name: "Xavier", last_name: "Dupont", password: "azerty", email: "xavier_lefuyard@zoo.com")
marty = User.create(first_name: "Marty", last_name: "McFly", password: "azerty", email: "retour_verslefutur@zoo.com")

jean_jean = Dino.create!(name: "Jean-Jean", specie: "T-Rex", price: 100,
              description: "Sacré Jean-Jean ! De son vrai nom Rémy, il aime se détendre à l'asile par temps clair, un vrai clown!",
              place: 'Ta-Tronche-Sur-Mer', characteristic: 'Maniaco-dépressif', user: gerard)

jean_image = URI.open("https://res.cloudinary.com/df6z4mw2e/image/upload/v1653385264/b8ncm4khejc2ivi0marq.jpg")
jean_jean.photo.attach(io: jean_image, filename: 'nes.jpg', content_type: 'image/jpg')


giselle = Dino.create!(name: "Giselle La Pelle", specie: "Spinosaurus", price: 150,
            description: "Elle n'est pas très gracieuse et accompagnable, mais elle est futée et renifle bien les portes, indispensable en cas de séquestration.",
            place: 'Vatan', characteristic: 'Manges des portes', user: xavier)

giselle_image = URI.open("https://res.cloudinary.com/df6z4mw2e/image/upload/v1653385264/b8ncm4khejc2ivi0marq.jpg")
giselle.photo.attach(io: giselle_image, filename: 'nes.jpg', content_type: 'image/jpg')


kevin = Dino.create!(name: "Kévin... Kévin", specie: "Iguanodon", price: 200,
          description: "Kévin vous offrira des magnolias et vous emmènera sur sa motocross à Alandrie, accrochez-vous !",
          place: 'Chalon-en-Champagne', characteristic: 'Fan de Claude-François', user: marty)

kevin_image = URI.open("https://res.cloudinary.com/df6z4mw2e/image/upload/v1653385264/b8ncm4khejc2ivi0marq.jpg")
kevin.photo.attach(io: kevin_image, filename: 'nes.jpg', content_type: 'image/jpg')


oscar = Dino.create!(name: "Oscar'o Poincom", specie: "Diplodocus", price: 150,
          description: "Commercial sous pression depuis la parution de son insupportable pub, oscar est bouli-enfant-ique. Pas de panique, il les vomit toujours !",
          place: 'Montcuq', characteristic: 'Mange les enfants mais les vomit toujours', user: jeanfrancois)

oscar_image = URI.open("https://res.cloudinary.com/df6z4mw2e/image/upload/v1653385264/b8ncm4khejc2ivi0marq.jpg")
oscar.photo.attach(io: oscar_image, filename: 'nes.jpg', content_type: 'image/jpg')


rodrigues = Dino.create!(name: "Rodrigues L'Intrépide", specie: "Brachiosaurus", price: 120,
              description: "Rodrigues se déplace sur toute la Norvège pour nettoyer vos intérieurs ! Maniaque du ménage, il saura faire disparaître frigo, salon, maison entière.",
              place: 'Bourré-en-Retz', characteristic: 'Maniaque du ménage', user: xavier)

rodrigues_image = URI.open("https://res.cloudinary.com/df6z4mw2e/image/upload/v1653385264/b8ncm4khejc2ivi0marq.jpg")
rodrigues.photo.attach(io: rodrigues_image, filename: 'nes.jpg', content_type: 'image/jpg')


leopold = Dino.create!(name: "Léopold Jr Le Patricide ", specie: "Allosaurus", price: 100,
            description: "Escobar n'a qu'à bien se tenir, Léopold vous fournira le meilleur béton de la région, grosse soirée en prévision !",
            place: 'Bogota', characteristic: 'Accro au béton', user: marty)

leopold_image = URI.open("https://res.cloudinary.com/df6z4mw2e/image/upload/v1653385264/b8ncm4khejc2ivi0marq.jpg")
leopold.photo.attach(io: leopold_image, filename: 'nes.jpg', content_type: 'image/jpg')


geraldine = Dino.create!(name: "Géraldine La Narine", specie: "Vélociraptor", price: 175,
              description: "Vélociraptor d'exception, Géraldine se crache sous vos yeux et vous explose les tympans au karaoké, rock'n'roll baby !",
              place: 'Clochemerle', characteristic: 'Ne sait pas voler mais chante faux', user: gerard)

geraldine_image = URI.open("https://res.cloudinary.com/df6z4mw2e/image/upload/v1653385264/b8ncm4khejc2ivi0marq.jpg")
geraldine.photo.attach(io: geraldine_image, filename: 'nes.jpg', content_type: 'image/jpg')


catherine = Dino.create!(name: "Cathy L'Indolore", specie: "Tricératops", price: 190,
              description: "Gémaux de sous-naissance, Géraldine peut vous brosser délicatement les cheveux comme vous les arracher (ainsi que votre tête). En cas de besoin appelez le SAV, nous serons ravis de vous aider.",
              place: 'Pisse-en-Lair', characteristic: 'Flexi-chiante', user: jeanfrancois)

catherine_image = URI.open("https://res.cloudinary.com/df6z4mw2e/image/upload/v1653385264/b8ncm4khejc2ivi0marq.jpg")
catherine.photo.attach(io: catherine_image, filename: 'nes.jpg', content_type: 'image/jpg')

puts "Finished!"

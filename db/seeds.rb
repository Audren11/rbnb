# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


puts "Cleaning database..."
Dino.destroy_all

puts "Creating dinos..."

jean_jean = { name: "Jean-Jean", specie: "T-Rex", price: 100,
              description: "Sacré Jean-Jean ! De son vrai nom Rémy, il aime se détendre à l'asile par temps clair, un clown!",
              place: 'Lamballe', characteristic: 'Maniaco-dépressif' }

giselle = { name: "Giselle La Pelle", specie: "Spinosaurus", price: 150,
            description: "Elle n'est pas très gracieuse et accompagnable, mais elle est futée et renifle bien les portes, indispensable en cas de séquestration.",
            place: 'Mon-Cul', characteristic: 'Manges des portes' }

kevin = { name: "Kévin... Kévin", specie: "Iguanodon", price: 200,
          description: "Kévin vous offrira des magnolias et vous emmènera sur sa motocross à Alandrie, accrochez-vous !",
          place: 'Chalon-en-Champagne', characteristic: 'Fan de Claude-François' }

oscar = { name: "Oscar'o Poincom", specie: "Diplodocus", price: 150,
          description: "Commercial sous pression depuis la parution de son insupportable pub, oscar est bouli-enfant-ique. Pas de panique, il les vomit toujours !",
          place: 'Bruz', characteristic: 'Mange les enfants mais les vomit toujours' }

rodrigues = { name: "Rodrigues L'Intrépide", specie: "Brachiosaurus", price: 120,
              description: "Rodrigues se déplace sur toute la Norvège pour nettoyer vos intérieurs ! Maniaque du ménage, il saura faire disparaître frigo, salon, maison entière.",
              place: 'Norvège', characteristic: 'Maniaque du ménage' }

leopold = { name: "Léopold Junior Le Patricide ", specie: "Allosaurus", price: 100,
            description: "Escobar n'a qu'à bien se tenir, Léopold vous fournira le meilleur béton de la région, grosse soirée en prévision !",
            place: 'Bogota', characteristic: 'Accro au béton' }

geraldine = { name: "Géraldine La Narine", specie: "Vélociraptor", price: 175,
              description: "Vélociraptor d'exception, Géraldine se crache sous vos yeux et vous explose les tympans au karaoké, rock'n'roll baby !",
              place: 'Nice', characteristic: 'Ne sait pas voler mais chante faux' }

catherine = { name: "Cathy L'Indolore", specie: "Tricératops", price: 190,
              description: "Gémaux de sous-naissance, Géraldine peut vous brosser délicatement les cheveux comme vous les arracher (ainsi que votre tête). En cas de besoin appelez le SAV, nous serons ravis de vous aider.",
              place: 'Plougastel', characteristic: 'Flexi-chiante' }

[jean_jean, giselle, kevin, oscar, rodrigues, leopold, geraldine, catherine].each do |attributes|
  dino = Dino.create!(attributes)
  puts "Created #{dino.name}"
end
puts "Finished!"


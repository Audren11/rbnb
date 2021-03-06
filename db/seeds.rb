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
Booking.delete_all

puts "Creating dinos..."

gerard = User.create(first_name: "Gerard", last_name: "Junior", password: "azerty", email: "gerard@zoo.com")
jeanfrancois = User.create(first_name: "Jean-Francois", last_name: "Martin", password: "azerty", email: "jeanfrancois@zoo.com")
xavier = User.create(first_name: "Xavier", last_name: "Dupont", password: "azerty", email: "xavier@zoo.com")
marty = User.create(first_name: "Marty", last_name: "McFly", password: "azerty", email: "marty@zoo.com")


# file = URI.open("https://res.cloudinary.com/df6z4mw2e/image/upload/v1653596588/kisspng-computer-icons-avatar-woman-user-profile-boss-lady-5b364336a9f118.2036420915302828066961_dlby7a.jpg")
# gerard.photo.attach(io: file, filename: 'nes.jpg', content_type: 'image/jpg')

# file = URI.open("https://res.cloudinary.com/df6z4mw2e/image/upload/v1653596588/kisspng-computer-icons-user-avatar-woman-avatar-5b0c5b2f6ecaa1.2446433615275364314538_wzfe3k.jpg")
# jeanfrancois.photo.attach(io: file, filename: 'nes.jpg', content_type: 'image/jpg')

# file URI.open("https://res.cloudinary.com/df6z4mw2e/image/upload/v1653596588/kisspng-computer-icons-avatar-mover-business-flat-design-corporate-elderly-care-5ada15a1548543.1841704615242418253462_qxej7g.jpg")
# xavier.photo.attach(io: file, filename: 'nes.jpg', content_type: 'image/jpg')

# file = URI.open("https://res.cloudinary.com/df6z4mw2e/image/upload/v1653596588/kisspng-computer-icons-user-avatar-woman-avatar-5b0c5b2f6ecaa1.2446433615275364314538_wzfe3k.jpg")
# marty.photo.attach(io: file, filename: 'nes.jpg', content_type: 'image/jpg')

jean_jean = Dino.create!(name: "Jean-Jean", specie: "Diplodocus", price: 100,
description: "Sacr?? Jean-Jean ! De son vrai nom R??my, il aime se d??tendre ?? l'asile par temps clair, un vrai clown!",
place: 'La Rochelle', characteristic: 'Maniaco-d??pressif', user_id: gerard.id)

jean_image = URI.open("https://res.cloudinary.com/df6z4mw2e/image/upload/v1653407563/1200px-diplodocus_model_okdf4h.jpg")
jean_jean.photo.attach(io: jean_image, filename: 'nes.jpg', content_type: 'image/jpg')

giselle = Dino.create!(name: "Giselle La Pelle", specie: "Spinosaurus", price: 150,
            description: "Elle n'est pas tr??s gracieuse et accompagnable, mais elle est fut??e et renifle bien les portes, indispensable en cas de s??questration.",
            place: 'Nantes', characteristic: 'Manges des portes', user_id: xavier.id)

giselle_image = URI.open("https://res.cloudinary.com/df6z4mw2e/image/upload/v1653407577/spino_mrtoix.jpg")
giselle.photo.attach(io: giselle_image, filename: 'nes.jpg', content_type: 'image/jpg')


kevin = Dino.create!(name: "K??vin... K??vin", specie: "Triceratops", price: 200,
          description: "K??vin vous offrira des magnolias et vous emm??nera sur sa motocross ?? Alexandrie, accrochez-vous !",
          place: 'Lyon', characteristic: 'Fan de Claude-Fran??ois', user_id: marty.id)

kevin_image = URI.open("https://res.cloudinary.com/df6z4mw2e/image/upload/v1653407570/dinosaur-5414593__480_xwqpe5.jpg")
kevin.photo.attach(io: kevin_image, filename: 'nes.jpg', content_type: 'image/jpg')


oscar = Dino.create!(name: "Oscar'o Poincom", specie: "T-Rex", price: 150,
          description: "Commercial sous pression depuis la parution de son insupportable pub, oscar est bouli-enfant-ique. Pas de panique, il les vomit toujours !",
          place: 'Paris', characteristic: 'Mange les enfants mais les vomit toujours', user_id: jeanfrancois.id)

oscar_image = URI.open("https://res.cloudinary.com/df6z4mw2e/image/upload/v1653407557/95544360_118410429840657_4286014973542400000_n_y87wxw.jpg")
oscar.photo.attach(io: oscar_image, filename: 'nes.jpg', content_type: 'image/jpg')


rodrigues = Dino.create!(name: "Rodrigues L'Intr??pide", specie: "V??lociraptor", price: 120,
              description: "Rodrigues se d??place sur toute la Norv??ge pour nettoyer vos int??rieurs ! Maniaque du m??nage, il saura faire dispara??tre frigo, salon, maison enti??re.",
              place: 'Paris', characteristic: 'Maniaque du m??nage', user_id: xavier.id)


rodrigues_image = URI.open("https://res.cloudinary.com/df6z4mw2e/image/upload/v1653385264/b8ncm4khejc2ivi0marq.jpg")
rodrigues.photo.attach(io: rodrigues_image, filename: 'nes.jpg', content_type: 'image/jpg')


leopold = Dino.create!(name: "L??opold Jr Le Patricide ", specie: "T-Rex", price: 100,
            description: "Escobar n'a qu'?? bien se tenir, L??opold vous fournira le meilleur b??ton de la r??gion, grosse soir??e en pr??vision !",
            place: 'Saint Jean de Monts', characteristic: 'Accro au b??ton', user: marty)


leopold_image = URI.open("https://res.cloudinary.com/df6z4mw2e/image/upload/v1653407544/189217490_312975267050838_675792896034232271_n_blvw4i.jpg")
leopold.photo.attach(io: leopold_image, filename: 'nes.jpg', content_type: 'image/jpg')


geraldine = Dino.create!(name: "G??raldine La Narine", specie: "Pt??rodactyle", price: 175,
              description: "V??lociraptor d'exception, G??raldine se crache sous vos yeux et vous explose les tympans au karaok??, rock'n'roll baby !",
              place: 'Saint Herblain', characteristic: 'Ne sait pas voler mais chante faux', user: gerard)

geraldine_image = URI.open("https://res.cloudinary.com/df6z4mw2e/image/upload/v1653407587/pterodactyle_j0euuo.jpg")
geraldine.photo.attach(io: geraldine_image, filename: 'nes.jpg', content_type: 'image/jpg')


catherine = Dino.create!(name: "Cathy L'Indolore", specie: "Tric??ratops", price: 190,
              description: "G??maux de sous-naissance, Cathy peut vous brosser d??licatement les cheveux comme vous les arracher (ainsi que votre t??te). En cas de besoin appelez le SAV, nous serons ravis de vous aider.",
              place: 'Le Croisic', characteristic: 'Flexi-chiante', user: jeanfrancois)


catherine_image = URI.open("https://res.cloudinary.com/df6z4mw2e/image/upload/v1653486624/artistbringsprehistoricanimalstomoderntimesandwecancomparethemwithtoday62220867c64a7880_te8ibx.jpg")
catherine.photo.attach(io: catherine_image, filename: 'nes.jpg', content_type: 'image/jpg')


# Booking.create!( dino_id: jean_jean.id, user_id: gerard.id, total_price: 3000, checkin_on: DateTime.parse("24/07/2023"), checkout_on: DateTime.parse("29/07/2023"))

puts "Finished!"

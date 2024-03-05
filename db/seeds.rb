# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
puts "Effacement de toutes les données..."
Spot.destroy_all
Review.destroy_all
User.destroy_all
Bookmark.destroy_all
Photo.destroy_all
Follow.destroy_all
puts "Données effacées!"

puts "Création de nouveaux utilisateurs..."
@user_marine = User.create!(nickname: "MarineG", email: "marineG@wave.com", password: "123456")
@user_perrine = User.create!(nickname: "PerrineG", email: "perrineG@wave.com", password: "123456")
@user_cedric = User.create!(nickname: "CédricM", email: "cedricM@wave.com", password: "123456")
@user_mathieu = User.create!(nickname: "MathieuR", email: "mathieuP@wave.com", password: "123456")
@user_kelly = User.create!(nickname: "SlaterKelly", email: "SlaterKelly@surfing.com", password: "123456")
@user_melanie = User.create!(nickname: "Melanie", email: "Melanie@test.com", password: "123456")
puts 'Utilisateurs créés !'

puts 'Création de nouveaux spots...'
@spot1 = Spot.new(
  name: "Plage des Longchamps",
  description: "Un spot de surf sur la plage, mais avec quelques récifs à proximité, ce qui augmente un peu le niveau de difficulté - et l’intérêt. A surfer à marée montante, mais à éviter l’été, quand la mer est pleine de baigneurs. Récifs parfois dangereux.",
  address: "bd Longchamp, 35800 Saint Lunaire, France",
  city: 'Saint-Lunaire',
  difficulty: Spot::DIFFICULTY[1]
  )
file = URI.open('https://res.cloudinary.com/djolwxrtw/image/upload/v1709647205/Longchamps.jpg')
@spot1.photo.attach(io: file, filename: 'longchamps.jpg', content_type: 'image/jpg')
@spot1.save!

@spot2 = Spot.new(
  name: "Le Sillon",
  description: "Un bon spot de surf pour tous près du centre de Saint-Malo, facilement accessible, trop, diront certains, car la plage est vite saturée. A surfer de préférence en automne, à marée montante.",
  address: "Chau du Sillon 35400 Saint-Malo, France",
  city: 'Saint-Malo',
  difficulty: Spot::DIFFICULTY[0]
  )
file = URI.open('https://res.cloudinary.com/djolwxrtw/image/upload/v1709647213/Le%20Sillon.jpg')
@spot2.photo.attach(io: file, filename: 'le_sillon.jpg', content_type: 'image/jpg')
@spot2.save!

@spot3 = Spot.new(
  name: "Penfoul",
  description: "Ce spot est bien sympathique et ouvert à tous même s’il vaut mieux avoir déjà quelques heures de surf pour s’y lancer. Pas de danger particuliers pour ce beach-break à surfer à marée montante toute l’année.",
  address: "Chemin de la Plage, 29840 Landunvez, France",
  city: 'Landunvez',
  difficulty: Spot::DIFFICULTY[0]
  )
file = URI.open('https://res.cloudinary.com/djolwxrtw/image/upload/v1709647226/Penfoul.jpg')
@spot3.photo.attach(io: file, filename: 'penfoul.jpg', content_type: 'image/jpg')
@spot3.save!

@spot4 = Spot.new(
  name: "Lostmarc’h",
  description: "Parmi les magnifiques spots de surf de la presqu’île de Crozon, celui de Lostmarc’h est à conseiller tout particulièrement. Son niveau est intermédiaire plus, avec des vagues qui saturent à partir de 3,50 mètres, une forte houle et un vent parfois très puissant. Dans l’idéal, surfer quand la houle entre par l’ouest. A surfer toute l’année ; seul inconvénient : le spot est surchargé l’été.",
  address: "Lostmarc'h Beach, 29160 Crozon, France",
  city: 'Crozon',
  difficulty: Spot::DIFFICULTY[1]
  )
file = URI.open('https://res.cloudinary.com/djolwxrtw/image/upload/v1709647233/Lostmarc%E2%80%99h.jpg')
@spot4.photo.attach(io: file, filename: 'lostmarch.jpg', content_type: 'image/jpg')
@spot4.save!

@spot5 = Spot.new(
  name: "La Torche",
  description: "LE spot de référence en Bretagne, une longue plage de sable et une mer sans grosse difficulté, si ce n’est un léger courant et quelques baïnes. Houles de nord-ouest à sud-ouest pour des vagues interminables à surfer sans modération tout au long de l’année. Attention toutefois, elles peuvent atteindre les 3 mètres fréquemment.",
  address: "Plage de la Torche, 29120 Plomeur, France",
  city: 'Plomeur',
  difficulty: Spot::DIFFICULTY[0]
  )
file = URI.open('https://res.cloudinary.com/djolwxrtw/image/upload/v1709647245/La%20Torche.jpg')
@spot5.photo.attach(io: file, filename: 'la_torche.jpg', content_type: 'image/jpg')
@spot5.save!

@spot6 = Spot.new(
  name: "Baie des Trépassés",
  description: "Ce beach-break de repli est situé dans un coin sauvage de Bretagne et constitue l’un des sites préférés des surfeurs de la région. De grande vagues qui déroulent sans s’arrêter grâce à un vent Nord-Nord-Ouest puissant, des conditions idéales à marée basse de l’automne au printemps, à marée basse comme à marée haute. Les courants peuvent vous déporter vers les falaises.",
  address: "18 Plage du Loch, 29770 Plogoff, France",
  city: 'Plogoff',
  difficulty: Spot::DIFFICULTY[1]
  )
file = URI.open('https://res.cloudinary.com/djolwxrtw/image/upload/v1709647252/Baie%20des%20Tr%C3%A9pass%C3%A9s.jpg')
@spot6.photo.attach(io: file, filename: 'baie_des_trepasses.jpg', content_type: 'image/jpg')
@spot6.save!

@spot7 = Spot.new(
  name: "Sainte-Barbe",
  description: "Un beach-break que l’on dirait spécialement créé pour les débutants avec ses longues vagues rassurantes et faciles à prendre. A surfer avec un vent Nord-Est et à marée montante, de l’automne au printemps. En s’éloignant de Plouharnel et en se rapprochant de la Côte Sauvage, les vagues s’intensifient et le niveau exigé devient... plus exigeant.",
  address: "Rue de la Plage Sainte-Barbe, Plouharnel, France",
  city: 'Plouharnel',
  difficulty: Spot::DIFFICULTY[0]
  )
file = URI.open('https://res.cloudinary.com/djolwxrtw/image/upload/v1709647256/Sainte-Barbe.jpg')
@spot7.photo.attach(io: file, filename: 'sainte_barbe.jpg', content_type: 'image/jpg')
@spot7.save!

@spot8 = Spot.new(
  name: "Port Rhu",
  description: "Le spot le plus délicat à maîtriser de toute la presqu’île de Quiberon. Une mise à l’eau difficile et des vagues puissantes qui peuvent porter vers la falaise. A ne pas mettre entre toutes les planches !",
  address: "Plage de Port Blanc 56510 Saint-Pierre-Quiberon, France",
  city: 'Saint-Pierre-Quiberon',
  difficulty: Spot::DIFFICULTY[2]
  )
file = URI.open('https://res.cloudinary.com/djolwxrtw/image/upload/v1709647263/Port%20Rhu.jpg')
@spot8.photo.attach(io: file, filename: 'port_rhu.jpg', content_type: 'image/jpg')
@spot8.save!

@spot9 = Spot.new(
  name: "Donnant",
  description: "Un spot qui vaut l’aller-retour en bateau depuis Quiberon ! Un beach-break exposé à la houle avec des vagues de belle taille. Côté positif : des ascenseurs qui vous portent entre deux vagues. Côté négatif : un courant dangereux et la proximité des rochers. Privilégier la marée haute si l’on est débutant. Sinon, se contenter d’admirer depuis la plage : c’est déjà très bien.",
  address: "Plage du Donnant, Sauzon, France",
  city: 'Belle-île-en-Mer',
  difficulty: Spot::DIFFICULTY[1]
  )
file = URI.open('https://res.cloudinary.com/djolwxrtw/image/upload/v1709647272/Donnant.jpg')
@spot9.photo.attach(io: file, filename: 'donnant.jpg', content_type: 'image/jpg')
@spot9.save!

@spot10 = Spot.new(
  name: "Trestaou",
  description: "Un bon shore-break assez accessible avec, parfois, de grosses conditions qui satisfont les confirmés et surprennent les débutants. Attention à bien jauger son niveau. Un spot à surfer à marée montante pendant de l’automne au printemps. Parking et douches à proximité. Attention aux galets lors de la mise à l’eau...",
  address: "BD Joseph le Bihan, 22700, Perros-Guirec, France",
  city: 'Perros-Guirec',
  difficulty: Spot::DIFFICULTY[1]
  )
file = URI.open('https://res.cloudinary.com/djolwxrtw/image/upload/v1709647283/Trestaou.jpg')
@spot10.photo.attach(io: file, filename: 'trestaou.jpg', content_type: 'image/jpg')
@spot10.save!
puts "Spots créés!"

puts "Création de nouvelles évaluations..."
Review.create!(content:"Mon spot préféré, un pur bonheur de glisse", spot:@spot6, user:@user_marine, rate:5)
Review.create!(content:"Je me suis pété le nez sur ma planche en attaquant une vague trop grosse. J'y retournerai pour me venger.", spot:@spot8, user:@user_mathieu, rate:3)
Review.create!(content:"J'y suis allé avec mon fils, très bonne entrée en matière. La plage est un peu salle.", spot:@spot7, user:@user_cedric, rate:4)
Review.create!(content:"Difficile de surfer parmi les baigneurs, mais un plaisir en basse saison", spot:@spot1, user:@user_kelly, rate:4)
puts "Évaluations créées!"

puts "Création d'amis"
Follow.create!(follower:@user_mathieu, followed: @user_cedric)
Follow.create!(follower:@user_cedric, followed: @user_mathieu)
Follow.create!(follower:@user_marine, followed: @user_perrine)
Follow.create!(follower:@user_perrine, followed: @user_kelly)
Follow.create!(follower:@user_marine, followed: @user_cedric)
puts "Amis créés!"

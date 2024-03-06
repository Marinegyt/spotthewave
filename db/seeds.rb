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
Follow.destroy_all
Photo.destroy_all
Bookmark.destroy_all
Review.destroy_all
Spot.destroy_all
User.destroy_all
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
  city: 'Saint-Lunaire'
  )
file = URI.open(Cloudinary::Utils.cloudinary_url('assets/seed/Longchamps'))
@spot1.photo.attach(io: file, filename: 'longchamps.jpg', content_type: 'image/jpg')
@spot1.save!

@spot2 = Spot.new(
  name: "Le Sillon",
  description: "Un bon spot de surf pour tous près du centre de Saint-Malo, facilement accessible, trop, diront certains, car la plage est vite saturée. A surfer de préférence en automne, à marée montante.",
  address: "Chau du Sillon 35400 Saint-Malo, France",
  city: 'Saint-Malo'
  )
file = URI.open(Cloudinary::Utils.cloudinary_url('assets/seed/Le%20Sillon'))
@spot2.photo.attach(io: file, filename: 'le_sillon.jpg', content_type: 'image/jpg')
@spot2.save!

@spot3 = Spot.new(
  name: "Penfoul",
  description: "Ce spot est bien sympathique et ouvert à tous même s’il vaut mieux avoir déjà quelques heures de surf pour s’y lancer. Pas de danger particuliers pour ce beach-break à surfer à marée montante toute l’année.",
  address: "Chemin de la Plage, 29840 Landunvez, France",
  city: 'Landunvez'
  )
file = URI.open(Cloudinary::Utils.cloudinary_url('assets/seed/Penfoul'))
@spot3.photo.attach(io: file, filename: 'penfoul.jpg', content_type: 'image/jpg')
@spot3.save!

@spot4 = Spot.new(
  name: "Lostmarc’h",
  description: "Parmi les magnifiques spots de surf de la presqu’île de Crozon, celui de Lostmarc’h est à conseiller tout particulièrement. Son niveau est intermédiaire plus, avec des vagues qui saturent à partir de 3,50 mètres, une forte houle et un vent parfois très puissant. Dans l’idéal, surfer quand la houle entre par l’ouest. A surfer toute l’année ; seul inconvénient : le spot est surchargé l’été.",
  address: "Lostmarc'h Beach, 29160 Crozon, France",
  city: 'Crozon'
  )
file = URI.open(Cloudinary::Utils.cloudinary_url('assets/seed/Lostmarc%E2%80%99h'))
@spot4.photo.attach(io: file, filename: 'lostmarch.jpg', content_type: 'image/jpg')
@spot4.save!

@spot5 = Spot.new(
  name: "La Torche",
  description: "LE spot de référence en Bretagne, une longue plage de sable et une mer sans grosse difficulté, si ce n’est un léger courant et quelques baïnes. Houles de nord-ouest à sud-ouest pour des vagues interminables à surfer sans modération tout au long de l’année. Attention toutefois, elles peuvent atteindre les 3 mètres fréquemment.",
  address: "Plage de la Torche, 29120 Plomeur, France",
  city: 'Plomeur'
  )
file = URI.open(Cloudinary::Utils.cloudinary_url('assets/seed/La%20Torche'))
@spot5.photo.attach(io: file, filename: 'la_torche.jpg', content_type: 'image/jpg')
@spot5.save!

@spot6 = Spot.new(
  name: "Baie des Trépassés",
  description: "Ce beach-break de repli est situé dans un coin sauvage de Bretagne et constitue l’un des sites préférés des surfeurs de la région. De grande vagues qui déroulent sans s’arrêter grâce à un vent Nord-Nord-Ouest puissant, des conditions idéales à marée basse de l’automne au printemps, à marée basse comme à marée haute. Les courants peuvent vous déporter vers les falaises.",
  address: "18 Plage du Loch, 29770 Plogoff, France",
  city: 'Plogoff'
  )
file = URI.open(Cloudinary::Utils.cloudinary_url('assets/seed/Baie%20des%20Tr%C3%A9pass%C3%A9s'))
@spot6.photo.attach(io: file, filename: 'baie_des_trepasses.jpg', content_type: 'image/jpg')
@spot6.save!

@spot7 = Spot.new(
  name: "Sainte-Barbe",
  description: "Un beach-break que l’on dirait spécialement créé pour les débutants avec ses longues vagues rassurantes et faciles à prendre. A surfer avec un vent Nord-Est et à marée montante, de l’automne au printemps. En s’éloignant de Plouharnel et en se rapprochant de la Côte Sauvage, les vagues s’intensifient et le niveau exigé devient... plus exigeant.",
  address: "Rue de la Plage Sainte-Barbe, Plouharnel, France",
  city: 'Plouharnel'
  )
file = URI.open(Cloudinary::Utils.cloudinary_url('assets/seed/Sainte-Barbe'))
@spot7.photo.attach(io: file, filename: 'sainte_barbe.jpg', content_type: 'image/jpg')
@spot7.save!

@spot8 = Spot.new(
  name: "Port Rhu",
  description: "Le spot le plus délicat à maîtriser de toute la presqu’île de Quiberon. Une mise à l’eau difficile et des vagues puissantes qui peuvent porter vers la falaise. A ne pas mettre entre toutes les planches !",
  address: "Plage de Port Blanc 56510 Saint-Pierre-Quiberon, France",
  city: 'Saint-Pierre-Quiberon'
  )
file = URI.open(Cloudinary::Utils.cloudinary_url('assets/seed/Port%20Rhu'))
@spot8.photo.attach(io: file, filename: 'port_rhu.jpg', content_type: 'image/jpg')
@spot8.save!

@spot9 = Spot.new(
  name: "Donnant",
  description: "Un spot qui vaut l’aller-retour en bateau depuis Quiberon ! Un beach-break exposé à la houle avec des vagues de belle taille. Côté positif : des ascenseurs qui vous portent entre deux vagues. Côté négatif : un courant dangereux et la proximité des rochers. Privilégier la marée haute si l’on est débutant. Sinon, se contenter d’admirer depuis la plage : c’est déjà très bien.",
  address: "Plage du Donnant, Sauzon, France",
  city: 'Belle-île-en-Mer'
  )
file = URI.open(Cloudinary::Utils.cloudinary_url('assets/seed/Donnant'))
@spot9.photo.attach(io: file, filename: 'donnant.jpg', content_type: 'image/jpg')
@spot9.save!

@spot10 = Spot.new(
  name: "Trestaou",
  description: "Un bon shore-break assez accessible avec, parfois, de grosses conditions qui satisfont les confirmés et surprennent les débutants. Attention à bien jauger son niveau. Un spot à surfer à marée montante pendant de l’automne au printemps. Parking et douches à proximité. Attention aux galets lors de la mise à l’eau...",
  address: "BD Joseph le Bihan, 22700, Perros-Guirec, France",
  city: 'Perros-Guirec'
  )
file = URI.open(Cloudinary::Utils.cloudinary_url('assets/seed/Trestaou'))
@spot10.photo.attach(io: file, filename: 'trestaou.jpg', content_type: 'image/jpg')
@spot10.save!

@spot11 = Spot.new(
  name: "Los Lances",
  description: "La Costa de la Luz (Andalousie) abrite des spots parmi les meilleurs d’Europe. La plage de Los Lances, à Tarifa en fait partie. Les vagues, moyennes, sont idéales pour s’initier ou pour se perfectionner. Allez-y à n’importe quel moment de l’année : la plage est aussi vaste que magnifique.",
  address: "Avenida de los Lances, 11380 Tarifa, Cadix, Espagne",
  city: 'Tarifa'
  )
file = URI.open(Cloudinary::Utils.cloudinary_url('assets/seed/Los_Lances'))
@spot11.photo.attach(io: file, filename: 'los_lances.jpg', content_type: 'image/jpg')
@spot11.save!

@spot12 = Spot.new(
  name: "Rarawa Beach",
  description: "Au sud de Great Exhibition Bay dans le nord du Northland, Rarawa Beach est une belle plage de sable blanc sur le Pacifique. Il y a plusieurs endroits où il est possible de surfer, avec de belles vagues que ce soit à marée basse ou haute. C’est une plage sympathique accessible à tous les niveaux de surfers.",
  address: "Northland 0484, Nouvelle-Zélande",
  city: 'Great Exhibition Bay (Nouvelle-Zélande)'
  )
file = URI.open(Cloudinary::Utils.cloudinary_url('assets/seed/Rarawa_Beach'))
@spot11.photo.attach(io: file, filename: 'rarawa_beach.jpg', content_type: 'image/jpg')
@spot11.save!

puts "Spots créés!"

puts "Création de nouvelles évaluations..."
Review.create!(content:"Mon spot préféré, un pur bonheur de glisse", spot:@spot6, user:@user_marine, rate:5, difficulty: 2)
Review.create!(content:"Je me suis pété le nez sur ma planche en attaquant une vague trop grosse. J'y retournerai pour me venger.", spot:@spot8, user:@user_mathieu, rate:3, difficulty: 3)
Review.create!(content:"J'y suis allé avec mon fils, très bonne entrée en matière. La plage est un peu salle.", spot:@spot7, user:@user_cedric, rate:4, difficulty: 1)
Review.create!(content:"Difficile de surfer parmi les baigneurs, mais un plaisir en basse saison", spot:@spot1, user:@user_kelly, rate:4, difficulty: 2)
puts "Évaluations créées!"

puts "Création d'amis"
Follow.create!(follower:@user_mathieu, followed: @user_cedric)
Follow.create!(follower:@user_cedric, followed: @user_mathieu)
Follow.create!(follower:@user_marine, followed: @user_perrine)
Follow.create!(follower:@user_perrine, followed: @user_kelly)
Follow.create!(follower:@user_marine, followed: @user_cedric)
puts "Amis créés!"

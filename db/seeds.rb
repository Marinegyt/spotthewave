require 'faker'
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
@user_marine = User.create!(nickname: "MarineG", email: "marine@mail.com", password: "123456", latitude:47.48333, longitude:-3.11667)
@user_perrine = User.create!(nickname: "PerrineG", email: "perrine@mail.com", password: "123456", latitude:36.1333, longitude:-5.4505)
@user_cedric = User.create!(nickname: "CédricM", email: "cedric@mail.com", password: "123456", latitude:48.7833, longitude:-3.45)
@user_mathieu = User.create!(nickname: "MathieuR", email: "mathieu@mail.com", password: "123456", latitude:48.870908, longitude:2.3992345)
@user_kelly = User.create!(nickname: "SlaterKelly", email: "SlaterKelly@surfing.com", password: "123456", latitude:-34.7957228, longitude:173.1030232)
@user_melanie = User.create!(nickname: "Melanie", email: "Melanie@test.com", password: "123456", latitude:48.870908, longitude: 2.3992345)
@user_john = User.create!(
  nickname: "John",
  email: "john@example.com",
  password: "password123",
  latitude: 51.5074,
  longitude: -0.1278
)

@user_emily = User.create!(
  nickname: "Emily",
  email: "emily@example.com",
  password: "password456",
  latitude: 40.7128,
  longitude: -74.0060
)

@user_david = User.create!(
  nickname: "David",
  email: "david@example.com",
  password: "password789",
  latitude: 34.0522,
  longitude: -118.2437
)

@user_sophia = User.create!(
  nickname: "Sophia",
  email: "sophia@example.com",
  password: "passwordabc",
  latitude: 48.8566,
  longitude: 2.3522
)

@user_alexander = User.create!(
  nickname: "Alexander",
  email: "alexander@example.com",
  password: "passworddef",
  latitude: 55.7558,
  longitude: 37.6173
)

@user_isabella = User.create!(
  nickname: "Isabella",
  email: "isabella@example.com",
  password: "passwordghi",
  latitude: 34.0522,
  longitude: -118.2437
)

@user_michael = User.create!(
  nickname: "Michael",
  email: "michael@example.com",
  password: "passwordjkl",
  latitude: 51.5074,
  longitude: -0.1278
)

@user_sophie = User.create!(
  nickname: "Sophie",
  email: "sophie@example.com",
  password: "passwordmno",
  latitude: 40.7128,
  longitude: -74.0060
)

@user_jacob = User.create!(
  nickname: "Jacob",
  email: "jacob@example.com",
  password: "passwordpqr",
  latitude: 55.7558,
  longitude: 37.6173
)

@user_olivia = User.create!(
  nickname: "Olivia",
  email: "olivia@example.com",
  password: "passwordstu",
  latitude: 48.8566,
  longitude: 2.3522
)

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
  name: "Plage du Sillon",
  description: "Un bon spot de surf pour tous près du centre de Saint-Malo, facilement accessible, trop, diront certains, car la plage est vite saturée. A surfer de préférence en automne, à marée montante.",
  address: "Grande Plage du Sillon, 100 Bd Hébert, 35400 Saint-Malo",
  city: 'Saint-Malo'
  )
file = URI.open(Cloudinary::Utils.cloudinary_url('assets/seed/Le%20Sillon'))
@spot2.photo.attach(io: file, filename: 'le_sillon.jpg', content_type: 'image/jpg')
@spot2.save!

@spot3 = Spot.new(
  name: "Plage de Penfoul",
  description: "Ce spot est bien sympathique et ouvert à tous même s’il vaut mieux avoir déjà quelques heures de surf pour s’y lancer. Pas de danger particuliers pour ce beach-break à surfer à marée montante toute l’année.",
  address: "Chemin de la Plage, 29840 Landunvez, France",
  city: 'Landunvez'
  )
file = URI.open(Cloudinary::Utils.cloudinary_url('assets/seed/Penfoul'))
@spot3.photo.attach(io: file, filename: 'penfoul.jpg', content_type: 'image/jpg')
@spot3.save!

@spot4 = Spot.new(
  name: "Plage de Lostmarc’h",
  description: "Parmi les magnifiques spots de surf de la presqu’île de Crozon, celui de Lostmarc’h est à conseiller tout particulièrement. Son niveau est intermédiaire plus, avec des vagues qui saturent à partir de 3,50 mètres, une forte houle et un vent parfois très puissant. Dans l’idéal, surfer quand la houle entre par l’ouest. A surfer toute l’année ; seul inconvénient : le spot est surchargé l’été.",
  address: "Lostmarc'h Beach, 29160 Crozon, France",
  city: 'Crozon'
  )
file = URI.open(Cloudinary::Utils.cloudinary_url('assets/seed/Lostmarc%E2%80%99h'))
@spot4.photo.attach(io: file, filename: 'lostmarch.jpg', content_type: 'image/jpg')
@spot4.save!

@spot5 = Spot.new(
  name: "Plage de la Torche",
  description: "LE spot de référence en Bretagne, une longue plage de sable et une mer sans grosse difficulté, si ce n’est un léger courant et quelques baïnes. Houles de nord-ouest à sud-ouest pour des vagues interminables à surfer sans modération tout au long de l’année. Attention toutefois, elles peuvent atteindre les 3 mètres fréquemment.",
  address: "Plage de la Torche, 29120 Plomeur, France",
  city: 'Plomeur'
  )
file = URI.open(Cloudinary::Utils.cloudinary_url('assets/seed/La%20Torche'))
@spot5.photo.attach(io: file, filename: 'la_torche.jpg', content_type: 'image/jpg')
@spot5.save!

@spot6 = Spot.new(
  name: "Plage de la Baie des Trépassés",
  description: "Ce beach-break de repli est situé dans un coin sauvage de Bretagne et constitue l’un des sites préférés des surfeurs de la région. De grande vagues qui déroulent sans s’arrêter grâce à un vent Nord-Nord-Ouest puissant, des conditions idéales à marée basse de l’automne au printemps, à marée basse comme à marée haute. Les courants peuvent vous déporter vers les falaises.",
  address: "Rte de la Baie, 29770 Plogoff",
  city: 'Plogoff'
  )
file = URI.open(Cloudinary::Utils.cloudinary_url('assets/seed/Baie%20des%20Tr%C3%A9pass%C3%A9s'))
@spot6.photo.attach(io: file, filename: 'baie_des_trepasses.jpg', content_type: 'image/jpg')
@spot6.save!

@spot7 = Spot.new(
  name: "Plage de Sainte-Barbe",
  description: "Un beach-break que l’on dirait spécialement créé pour les débutants avec ses longues vagues rassurantes et faciles à prendre. A surfer avec un vent Nord-Est et à marée montante, de l’automne au printemps. En s’éloignant de Plouharnel et en se rapprochant de la Côte Sauvage, les vagues s’intensifient et le niveau exigé devient... plus exigeant.",
  address: "Rue de la Plage Sainte-Barbe, Plouharnel, France",
  city: 'Plouharnel'
  )
file = URI.open(Cloudinary::Utils.cloudinary_url('assets/seed/Sainte-Barbe'))
@spot7.photo.attach(io: file, filename: 'sainte_barbe.jpg', content_type: 'image/jpg')
@spot7.save!

@spot8 = Spot.new(
  name: "Plage de Port Rhu",
  description: "Le spot le plus délicat à maîtriser de toute la presqu’île de Quiberon. Une mise à l’eau difficile et des vagues puissantes qui peuvent porter vers la falaise. A ne pas mettre entre toutes les planches !",
  address: "Rue de Port Rhu, 56510 Saint-Pierre-Quiberon",
  city: 'Saint-Pierre-Quiberon'
  )
file = URI.open(Cloudinary::Utils.cloudinary_url('assets/seed/Port%20Rhu'))
@spot8.photo.attach(io: file, filename: 'port_rhu.jpg', content_type: 'image/jpg')
@spot8.save!

@spot9 = Spot.new(
  name: "Plage du Donnant",
  description: "Un spot qui vaut l’aller-retour en bateau depuis Quiberon ! Un beach-break exposé à la houle avec des vagues de belle taille. Côté positif : des ascenseurs qui vous portent entre deux vagues. Côté négatif : un courant dangereux et la proximité des rochers. Privilégier la marée haute si l’on est débutant. Sinon, se contenter d’admirer depuis la plage : c’est déjà très bien.",
  address: "Plage de Donnant 56360 Sauzon ",
  city: 'Belle-île-en-Mer'
  )
file = URI.open(Cloudinary::Utils.cloudinary_url('assets/seed/Donnant'))
@spot9.photo.attach(io: file, filename: 'donnant.jpg', content_type: 'image/jpg')
@spot9.save!

@spot10 = Spot.new(
  name: "Plage de Trestaou",
  description: "Un bon shore-break assez accessible avec, parfois, de grosses conditions qui satisfont les confirmés et surprennent les débutants. Attention à bien jauger son niveau. Un spot à surfer à marée montante pendant de l’automne au printemps. Parking et douches à proximité. Attention aux galets lors de la mise à l’eau...",
  address: "BD Joseph le Bihan, 22700, Perros-Guirec, France",
  city: 'Perros-Guirec'
  )
file = URI.open(Cloudinary::Utils.cloudinary_url('assets/seed/Trestaou'))
@spot10.photo.attach(io: file, filename: 'trestaou.jpg', content_type: 'image/jpg')
@spot10.save!

@spot11 = Spot.new(
  name: "Plage de la Grève Blanche",
  description: "Une plage sauvage et préservée, parfaite pour les surfeurs en quête de tranquillité. Les vagues sont souvent puissantes et régulières, offrant d'excellentes sessions de surf. À marée basse, des bancs de sable se forment, créant des vagues idéales pour les débutants.",
  address: "Plage de la Grève Blanche 29880 Plouguerneau",
  city: 'Plouguerneau'
)
file = URI.open("https://picsum.photos/id/12/600/400")
@spot11.photo.attach(io: file, filename: 'greve_blanche.jpg', content_type: 'image/jpg')
@spot11.save!

@spot12 = Spot.new(
  name: "Plage de la Côte des Basques",
  description: "Un spot emblématique de Biarritz, prisé par les surfeurs du monde entier. Les vagues sont souvent longues et puissantes, offrant des conditions idéales pour le surf. À marée basse, des rochers émergent, ajoutant un défi supplémentaire aux sessions de surf.",
  address: "1 Boulevard du Prince de Galles, 64200 Biarritz, France",
  city: 'Biarritz'
)
file = URI.open("https://picsum.photos/id/13/600/400")
@spot12.photo.attach(io: file, filename: 'basques.jpg', content_type: 'image/jpg')
@spot12.save!

@spot13 = Spot.new(
  name: "Plage de la Baule",
  description: "Une plage animée sur la côte atlantique, offrant des vagues adaptées à tous les niveaux de surf. Les débutants apprécient les vagues douces et progressives, tandis que les surfeurs confirmés trouvent des sections plus creuses. À marée basse, des bancs de sable se forment, créant des conditions idéales pour le longboard.",
  address: "Avenue de la Baule, 44500 La Baule-Escoublac, France",
  city: 'La Baule-Escoublac'
)
file = URI.open("https://picsum.photos/id/14/600/400")
@spot13.photo.attach(io: file, filename: 'la_baule.jpg', content_type: 'image/jpg')
@spot13.save!

@spot14 = Spot.new(
  name: "Plage de la Milady",
  description: "Une belle plage de sable fin, parfaite pour les débutants en surf. Les vagues sont généralement douces et régulières, offrant un environnement idéal pour apprendre. À marée basse, des bancs de sable se forment, créant des vagues parfaites pour le longboard.",
  address: "Avenue de la Milady, 64200 Biarritz, France",
  city: 'Biarritz'
)
file = URI.open("https://picsum.photos/id/16/600/400")
@spot14.photo.attach(io: file, filename: 'milady.jpg', content_type: 'image/jpg')
@spot14.save!

@spot15 = Spot.new(
  name: "Plage de la Palue",
  description: "Un spot sauvage et préservé sur la presqu'île de Crozon, idéal pour les surfeurs expérimentés. Les vagues sont souvent puissantes et rapides, offrant des sessions de surf intenses. À marée basse, des rochers émergent, créant des sections tubulaires.",
  address: "29470 Crozon, France",
  city: 'Crozon'
)
file = URI.open("https://picsum.photos/id/37/600/400")
@spot15.photo.attach(io: file, filename: 'palue.jpg', content_type: 'image/jpg')
@spot15.save!

@spot16 = Spot.new(
  name: "Plage de la Grande Plage",
  description: "La plage principale de Quiberon, offrant des vagues adaptées à tous les niveaux de surf. Les débutants apprécient les vagues douces et progressives, tandis que les surfeurs confirmés trouvent des sections plus creuses. À marée basse, les bancs de sable offrent des conditions idéales pour le longboard.",
  address: "Boulevard Chanard, 56170 Quiberon, France",
  city: 'Quiberon'
)

file = URI.open("https://picsum.photos/id/51/600/400")
@spot16.photo.attach(io: file, filename: 'grande_plage.jpg', content_type: 'image/jpg')
@spot16.save!

@spot17 = Spot.new(
  name: "Plage du Santocha",
  description: "Un spot animé à Anglet, apprécié par les surfeurs de tous niveaux. Les vagues sont généralement puissantes et rapides, offrant des sessions dynamiques. À marée basse, des bancs de sable se forment, créant des sections propices aux airs et aux manoeuvres radicales.",
  address: "Promenade de la Barre, 64600 Anglet, France",
  city: 'Anglet'
)

file = URI.open("https://picsum.photos/id/74/600/400")
@spot17.photo.attach(io: file, filename: 'santocha.jpg', content_type: 'image/jpg')
@spot17.save!

@spot18 = Spot.new(
  name: "Plage de la Barre",
  description: "Une plage familiale à Anglet, offrant des vagues adaptées à tous les niveaux de surf. Les débutants apprécient les vagues douces et progressives, tandis que les surfeurs confirmés trouvent des sections plus creuses. À marée basse, des bancs de sable se forment, créant des conditions propices au longboard.",
  address: "299 Av. de l'Adour, 64600 Anglet",
  city: 'Anglet'
)

file = URI.open("https://picsum.photos/id/77/600/400")
@spot18.photo.attach(io: file, filename: 'la_barre.jpg', content_type: 'image/jpg')
@spot18.save!

@spot19 = Spot.new(
  name: "Plage du Gros Jonc",
  description: "Une plage préservée sur l'île de Ré, offrant des vagues parfaites pour le longboard. Les vagues sont généralement douces et régulières, créant un environnement idéal pour les surfeurs débutants et intermédiaires. À marée basse, des bancs de sable se forment, offrant des conditions optimales pour le surf.",
  address: "Avenue du Pas des Boeufs, 17580 Le Bois-Plage-en-Ré, France",
  city: 'Le Bois-Plage-en-Ré'
)

file = URI.open("https://picsum.photos/id/92/600/400")
@spot19.photo.attach(io: file, filename: 'gros_jonc.jpg', content_type: 'image/jpg')
@spot19.save!

@spot20 = Spot.new(
  name: "Plage de la Pointe du Cap Ferret",
  description: "Une plage sauvage et préservée sur la presqu'île du Cap Ferret, offrant des vagues idéales pour les surfeurs expérimentés. Les vagues sont souvent puissantes et rapides, offrant des sessions de surf intenses. À marée basse, des bancs de sable se forment, créant des sections propices aux airs et aux manoeuvres radicales.",
  address: "Avenue de Bordeaux, 33950 Lège-Cap-Ferret, France",
  city: 'Lège-Cap-Ferret'
)

file = URI.open("https://picsum.photos/id/124/600/400")
@spot20.photo.attach(io: file, filename: 'cap_ferret.jpg', content_type: 'image/jpg')
@spot20.save!

@spot21 = Spot.new(
  name: "Plage de la Madrague",
  description: "Cette vaste plage surveillée située à la périphérie d'Anglet est idéale pour la baignade, le bronzage et le surf.",
  address: "Plage de la Madrague, Bd des Plages, 64600 Anglet",
  city: '64600 Anglet'
)

file = URI.open("https://picsum.photos/id/131/600/400")
@spot21.photo.attach(io: file, filename: 'madrague.jpg', content_type: 'image/jpg')
@spot21.save!

@spot22 = Spot.new(
  name: "Plage du Porge",
  description: "Une plage sauvage et préservée sur la côte atlantique, offrant des vagues puissantes et rapides. Les surfeurs expérimentés apprécient les conditions stimulantes offertes par cette plage. À marée basse, des bancs de sable se forment, créant des sections tubulaires.",
  address: "33980 Le Porge, France",
  city: 'Le Porge'
)

file = URI.open("https://picsum.photos/id/135/600/400")
@spot22.photo.attach(io: file, filename: 'porge.jpg', content_type: 'image/jpg')
@spot22.save!

@spot23 = Spot.new(
  name: "Plage de la Govelle",
  description: "Longue étendue de sable fin avec des affleurements rocheux, prisée pour le surf ainsi que la pêche et la baignade à marée basse.",
  address: "20 Rte de la Govelle, 44740 Batz-sur-Mer",
  city: 'Batz-sur-Mer'
)

file = URI.open("https://picsum.photos/id/144/600/400")
@spot23.photo.attach(io: file, filename: 'govelle.jpg', content_type: 'image/jpg')
@spot23.save!

@spot24 = Spot.new(
  name: "Plage de la Garoupe",
  description: "Une plage élégante à Antibes, offrant des vagues parfaites pour le longboard. Les vagues sont généralement douces et régulières, créant un environnement idéal pour les surfeurs débutants et intermédiaires. À marée basse, des bancs de sable se forment, offrant des conditions optimales pour le surf.",
  address: "Boulevard Kennedy, 06600 Antibes, France",
  city: 'Antibes'
)

file = URI.open("https://picsum.photos/id/147/600/400")
@spot24.photo.attach(io: file, filename: 'garoupe.jpg', content_type: 'image/jpg')
@spot24.save!

@spot25 = Spot.new(
  name: "Plage du Môle",
  description: "Une plage tranquille à Noirmoutier-en-l'Île, offrant des vagues douces et progressives. Les débutants en surf apprécient les conditions favorables offertes par cette plage. À marée basse, des bancs de sable se forment, créant des conditions idéales pour le longboard.",
  address: "85330 Noirmoutier-en-l'Île, France",
  city: "Noirmoutier-en-l'Île"
)

file = URI.open("https://picsum.photos/id/154/600/400")
@spot25.photo.attach(io: file, filename: 'mole.jpg', content_type: 'image/jpg')
@spot25.save!

@spot26 = Spot.new(
  name: "Plage de la Paracou",
  description: "Une plage préservée à Talmont-Saint-Hilaire, offrant des vagues douces et régulières, idéales pour les surfeurs de tous niveaux. Les vagues sont généralement propices à l'apprentissage du surf. À marée basse, des bancs de sable se forment, créant des conditions idéales pour le longboard.",
  address: "85440 Talmont-Saint-Hilaire, France",
  city: "Talmont-Saint-Hilaire"
)

file = URI.open("https://picsum.photos/id/176/600/400")
@spot26.photo.attach(io: file, filename: 'paracou.jpg', content_type: 'image/jpg')
@spot26.save!

@spot27 = Spot.new(
  name: "Plage de Tresmeur",
  description: "Une plage pittoresque à Trébeurden, offrant des vagues idéales pour les surfeurs de tous niveaux. Les vagues sont généralement douces et progressives, créant un environnement propice à l'apprentissage du surf. À marée basse, des bancs de sable se forment, offrant des conditions optimales pour le longboard.",
  address: "C8 Rue de Traou Meur, 22343 Trébeurden",
  city: "Trébeurden"
)

file = URI.open("https://picsum.photos/id/179/600/400")
@spot27.photo.attach(io: file, filename: 'tresmeur.jpg', content_type: 'image/jpg')
@spot27.save!

@spot28 = Spot.new(
  name: "Plage du Ris",
  description: "Une plage familiale à Douarnenez, offrant des vagues adaptées à tous les niveaux de surf. Les débutants apprécient les vagues douces et progressives, tandis que les surfeurs confirmés trouvent des sections plus creuses. À marée basse, des bancs de sable se forment, créant des conditions idéales pour le longboard.",
  address: "Plage du Ris, 29100 Douarnenez, France",
  city: "Douarnenez"
)

file = URI.open("https://picsum.photos/id/199/600/400")
@spot28.photo.attach(io: file, filename: 'ris.jpg', content_type: 'image/jpg')
@spot28.save!

@spot29 = Spot.new(
  name: "Plage de la Corniche",
  description: "Une plage pittoresque à Marseille, offrant des vagues idéales pour les surfeurs débutants et intermédiaires. Les vagues sont généralement douces et régulières, créant un environnement propice à l'apprentissage du surf. À marée basse, des bancs de sable se forment, offrant des conditions optimales pour le longboard.",
  address: "Avenue Pierre Mendès France, 13007 Marseille, France",
  city: 'Marseille'
)

file = URI.open("https://picsum.photos/id/203/600/400")
@spot29.photo.attach(io: file, filename: 'corniche.jpg', content_type: 'image/jpg')
@spot29.save!

@spot30 = Spot.new(
  name: "Plage de la Côte des Basques",
  description: "Un spot emblématique de Biarritz, prisé par les surfeurs du monde entier. Les vagues sont souvent longues et puissantes, offrant des conditions idéales pour le surf. À marée basse, des rochers émergent, ajoutant un défi supplémentaire aux sessions de surf.",
  address: "1 Boulevard du Prince de Galles, 64200 Biarritz, France",
  city: 'Biarritz'
)

file = URI.open("https://picsum.photos/id/215/600/400")
@spot30.photo.attach(io: file, filename: 'basques.jpg', content_type: 'image/jpg')
@spot30.save!

puts "Spots créés!"

puts "Création de nouvelles évaluations..."
# Users
users = [
  @user_marine, @user_perrine, @user_cedric, @user_mathieu, @user_kelly,
  @user_melanie, @user_john, @user_emily, @user_david, @user_sophia,
  @user_alexander, @user_isabella, @user_michael, @user_sophie, @user_jacob,
  @user_olivia
]

# Spots
spots = [
  @spot1, @spot2, @spot3, @spot4, @spot5, @spot6, @spot7, @spot8, @spot9, @spot10,
  @spot11, @spot12, @spot13, @spot14, @spot15, @spot16, @spot17, @spot18, @spot19, @spot20,
  @spot21, @spot22, @spot23, @spot24, @spot25, @spot26, @spot27, @spot28, @spot29, @spot30
]

# Reviews
reviews = [
  "Les vagues sont géniales ici! Parfait pour une scéance sportive.",
  "C'est un endroit magnifique pour surfer, mais les vagues peuvent être un peu trop puissantes parfois.",
  "Spot incroyable! Les vagues sont parfaites et l'ambiance est super.",
  "J'adore cette plage. Les vagues sont toujours bonnes et il y a une belle communauté de surfeurs ici.",
  "Un de mes spots préférés. Les vagues sont fiables et il y a toujours une bonne énergie sur la plage.",
  "La plage est magnifique mais les vagues peuvent être imprévisibles. À surveiller!",
  "Une expérience de surf incroyable! Je recommande vivement cette plage à tous les surfeurs.",
  "Super spot! Bonnes vagues et bonne ambiance.",
  "C'est un spot unique. Les vagues sont un peu capricieuses mais ça vaut vraiment le coup.",
  "Un endroit parfait pour passer la journée à surfer. Les vagues sont excellentes et l'ambiance est géniale.",
  "Je viens ici depuis des années. Les vagues sont fiables et la communauté de surfeurs est géniale!",
  "Une plage fantastique pour surfer. Les vagues sont souvent parfaites et il y a toujours une bonne ambiance.",
  "Les vagues peuvent être imprévisibles, mais quand elles sont bonnes, c'est incroyable!",
  "J'ai passé une journée fantastique à surfer ici. Les vagues étaient parfaites et l'ambiance était super.",
  "C'est un spot génial pour tous les niveaux de surfeurs. Les vagues sont souvent parfaites pour apprendre.",
  "Spot incroyable! Les vagues sont toujours bonnes et l'atmosphère est détendue.",
  "Super spot pour surfer. Les vagues sont excellentes et l'ambiance est toujours positive.",
  "J'adore cet endroit. Les vagues sont fantastiques et la plage est magnifique.",
  "C'est un endroit unique pour surfer. Les vagues sont uniques et l'ambiance est incomparable.",
  "Les vagues peuvent être un peu difficiles parfois, mais quand elles sont bonnes, c'est magique!",
  "Une journée de surf parfaite. Les vagues étaient superbes et l'ambiance était géniale.",
  "Super spot! Les vagues sont excellentes et la plage est magnifique.",
  "C'est un endroit spécial pour surfer. Les vagues sont fiables et il y a toujours une bonne énergie.",
  "Les vagues peuvent être un peu agitées parfois, mais c'est ce qui rend ce spot si unique.",
  "J'ai passé un excellent moment à surfer ici. Les vagues étaient parfaites et l'ambiance était super.",
  "C'est un spot fantastique pour surfer. Les vagues sont souvent parfaites et il y a une bonne communauté de surfeurs.",
  "Super spot pour surfer. Les vagues sont excellentes et l'atmosphère est toujours détendue.",
  "J'ai adoré surfer ici. Les vagues étaient parfaites et l'ambiance était géniale.",
  "C'est un endroit spécial pour surfer. Les vagues sont uniques et l'ambiance est incomparable.",
  "Les vagues peuvent être un peu difficiles parfois, mais quand elles sont bonnes, c'est magique!"
]
followed_users = {}

100.times do
    user = users.sample
    spot = spots.sample
    if Review.exists?(user_id: user.id, spot_id: spot.id)
      puts "#{user.nickname} a déjà une évaluation pour #{spot.name}. Ignorer..."
      next
    end
    content = reviews.sample
    rate = rand(3..5)
    difficulty = rand(1..3)
    created_at = Faker::Time.between(from: DateTime.now - 1.month, to: DateTime.now)
    Review.create!(content: content, spot: spot, user: user, rate: rate, difficulty: difficulty, created_at: created_at)
end

puts "Évaluations créées!"

puts "Création de bookmarks"
300.times do
  user = users.sample
  spot = spots.sample
  created_at = Faker::Time.between(from: DateTime.now - 1.month, to: DateTime.now)
  Bookmark.create!(user: user, spot: spot, created_at: created_at)
end
puts "Bookmarks créés!"

puts "Création d'amis"

100.times do
  follower = users.sample
  followed = users.sample

  next if follower == followed || followed_users[follower]&.include?(followed)
  created_at = Faker::Time.between(from: DateTime.now - 1.month, to: DateTime.now)
  Follow.create!(follower: follower, followed: followed, created_at: created_at)

  followed_users[follower] ||= []
  followed_users[follower] << followed
end

puts "Amis créés!"

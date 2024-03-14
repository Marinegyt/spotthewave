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
@user_marine = User.new(nickname: "MarineG", email: "marine@mail.com", password: "123456", latitude:47.48333, longitude:-3.11667)
file = URI.open("https://api.dicebear.com/7.x/avataaars/svg?seed=Jack")
@user_marine.photo.attach(io: file, filename: 'photo.jpg', content_type: 'image/jpg')
@user_marine.save!

@user_perrine = User.new(nickname: "PerrineG", email: "perrine@mail.com", password: "123456", latitude:36.1333, longitude:-5.4505)
file = URI.open("https://api.dicebear.com/7.x/avataaars/svg?seed=Salem&randomizeIds=true&accessories=round&accessoriesProbability=50&eyebrows=default&eyes=default&mouth=default")
@user_perrine.photo.attach(io: file, filename: 'photo.jpg', content_type: 'image/jpg')
@user_perrine.save!

@user_cedric = User.new(nickname: "CédricM", email: "cedric@mail.com", password: "123456", latitude:48.7833, longitude:-3.45)
file = URI.open("https://api.dicebear.com/7.x/avataaars/svg?seed=Precious&randomizeIds=true&accessories=round&accessoriesColor=3c4f5c&accessoriesProbability=50&clothingGraphic[]&eyebrows=defaultNatural,default&eyes=default&facialHair=beardLight&facialHairProbability=100&hatColor=262e33&mouth=default&top=dreads01")
@user_cedric.photo.attach(io: file, filename: 'photo.jpg', content_type: 'image/jpg')
@user_cedric.save!

@user_mathieu = User.new(nickname: "MathieuR", email: "mathieu@mail.com", password: "123456", latitude:48.870908, longitude:2.3992345)
file = URI.open("https://api.dicebear.com/7.x/avataaars/svg?seed=Felix&randomizeIds=true&accessories=round&accessoriesColor=3c4f5c&accessoriesProbability=50&clothingGraphic[]&eyebrows=defaultNatural,default&eyes=default&facialHair=beardLight&facialHairColor=b58143&facialHairProbability=100&hairColor=b58143&hatColor=262e33&mouth=default&skinColor=f8d25c,ffdbb4&top=winterHat03")
@user_mathieu.photo.attach(io: file, filename: 'photo.jpg', content_type: 'image/jpg')
@user_mathieu.save!

@user_kelly = User.new(nickname: "SlaterKelly", email: "SlaterKelly@surfing.com", password: "123456", latitude:-34.7957228, longitude:173.1030232)
file = URI.open("https://api.dicebear.com/7.x/avataaars/svg?seed=Garfield&top[]")
@user_kelly.photo.attach(io: file, filename: 'photo.jpg', content_type: 'image/jpg')
@user_kelly.save!

@user_melanie = User.new(nickname: "Melanie", email: "Melanie@test.com", password: "123456", latitude:48.10667389975883, longitude:-1.694389609654948)
file = URI.open("https://api.dicebear.com/7.x/avataaars/svg?seed=Salem&randomizeIds=true&accessories=round&accessoriesProbability=50&eyebrows=default&eyes=default&mouth=default")
@user_melanie.photo.attach(io: file, filename: 'photo.jpg', content_type: 'image/jpg')
@user_melanie.save!

@user_john = User.new(
  nickname: "John",
  email: "john@example.com",
  password: "password123",
  latitude: 51.5074,
  longitude: -0.1278
)
file = URI.open("https://api.dicebear.com/7.x/avataaars/svg?seed=Luna")
@user_john.photo.attach(io: file, filename: 'photo.jpg', content_type: 'image/jpg')
@user_john.save!

@user_emily = User.new(
  nickname: "Emily",
  email: "emily@example.com",
  password: "password456",
  latitude: 40.7128,
  longitude: -74.0060
)
file = URI.open("https://api.dicebear.com/7.x/avataaars/svg?seed=Chloe")
@user_emily.photo.attach(io: file, filename: 'photo.jpg', content_type: 'image/jpg')
@user_emily.save!


@user_david = User.new(
  nickname: "David",
  email: "david@example.com",
  password: "password789",
  latitude: 34.0522,
  longitude: -118.2437
)
file = URI.open("https://api.dicebear.com/7.x/avataaars/svg?seed=Bailey")
@user_david.photo.attach(io: file, filename: 'photo.jpg', content_type: 'image/jpg')
@user_david.save!

@user_sophia = User.new(
  nickname: "Sophia",
  email: "sophia@example.com",gs
  password: "passwordabc",
  latitude: 48.8566,
  longitude: 2.3522
)
file = URI.open("https://api.dicebear.com/7.x/avataaars/svg?seed=Annie")
@user_sophia.photo.attach(io: file, filename: 'photo.jpg', content_type: 'image/jpg')
@user_sophia.save!

@user_alexander = User.new(
  nickname: "Alexander",
  email: "alexander@example.com",
  password: "passworddef",
  latitude: 55.7558,
  longitude: 37.6173
)
file = URI.open("https://api.dicebear.com/7.x/avataaars/svg?seed=Sammy")
@user_alexander.photo.attach(io: file, filename: 'photo.jpg', content_type: 'image/jpg')
@user_alexander.save!

@user_isabella = User.new(
  nickname: "Isabella",
  email: "isabella@example.com",
  password: "passwordghi",
  latitude: 34.0522,
  longitude: -118.2437
)
file = URI.open("https://api.dicebear.com/7.x/avataaars/svg?seed=Cookie&eyebrows=default,defaultNatural,flatNatural&eyes=default,happy,winkWacky&mouth=default,eating,serious,smile,tongue")
@user_isabella.photo.attach(io: file, filename: 'photo.jpg', content_type: 'image/jpg')
@user_isabella.save!

@user_michael = User.new(
  nickname: "Michael",
  email: "michael@example.com",
  password: "passwordjkl",
  latitude: 51.5074,
  longitude: -0.1278
)
file = URI.open("https://api.dicebear.com/7.x/avataaars/svg?seed=Casper&eyebrows=default,defaultNatural,flatNatural&eyes=default,happy,winkWacky&mouth=default,eating,serious,smile,tongue")
@user_michael.photo.attach(io: file, filename: 'photo.jpg', content_type: 'image/jpg')
@user_michael.save!

@user_sophie = User.new(
  nickname: "Sophie",
  email: "sophie@example.com",
  password: "passwordmno",
  latitude: 40.7128,
  longitude: -74.0060
)
file = URI.open("https://api.dicebear.com/7.x/avataaars/svg?seed=Rascal&mouth=default,smile,serious,tongue")
@user_sophie.photo.attach(io: file, filename: 'photo.jpg', content_type: 'image/jpg')
@user_sophie.save!

@user_jacob = User.new(
  nickname: "Jacob",
  email: "jacob@example.com",
  password: "passwordpqr",
  latitude: 55.7558,
  longitude: 37.6173
)
file = URI.open("https://api.dicebear.com/7.x/avataaars/svg?seed=Whiskers&eyes=default,eyeRoll,happy,hearts,side,squint,surprised,wink,winkWacky,xDizzy&mouth=default,smile,serious,tongue")
@user_jacob.photo.attach(io: file, filename: 'photo.jpg', content_type: 'image/jpg')
@user_jacob.save!

@user_olivia = User.new(
  nickname: "Olivia",
  email: "olivia@example.com",
  password: "passwordstu",
  latitude: 48.8566,
  longitude: 2.3522
)
file = URI.open("https://api.dicebear.com/7.x/avataaars/svg?seed=Misty&eyes=default,eyeRoll,happy,hearts,side,squint,surprised,wink,winkWacky,xDizzy&mouth=default,smile,serious,tongue")
@user_olivia.photo.attach(io: file, filename: 'photo.jpg', content_type: 'image/jpg')
@user_olivia.save!

puts 'Utilisateurs créés !'

puts 'Création de nouveaux spots...'
@spot1 = Spot.new(
  name: "Plage de Longchamp",
  description: "Plage la plus étendue de la commune de Saint-Lunaire, sa situation permet de vivre les joies de la baignade et du sport. Profitez de ce spot de surf d'exception et ses deux écoles! Son accès par les dunes récemment aménagée, et la promenade de la digue offrent une déambulation agréable avec une vue dégagée de la côte vers le Cap Fréhel. Plage surveillée en saison. Chiens interdits du 15 juin au 15 septembre.",
  address: "bd Longchamp, 35800 Saint Lunaire, France",
  city: 'Saint-Lunaire',
  region: 'Bretagne'
  )
file = URI.open(Cloudinary::Utils.cloudinary_url('assets/seed/Longchamps'))
@spot1.photo.attach(io: file, filename: 'longchamp.jpg', content_type: 'image/jpg')
@spot1.save!

@spot2 = Spot.new(
  name: "Plage du Sillon",
  description: "Un bon spot de surf pour tous près du centre de Saint-Malo, facilement accessible, trop, diront certains, car la plage est vite saturée. A surfer de préférence en automne, à marée montante.",
  address: "1B Quai Duguay-Trouin, 35400 Saint-Malo",
  city: 'Saint-Malo',
  region: 'Bretagne'
  )
file = URI.open(Cloudinary::Utils.cloudinary_url('assets/seed/Le%20Sillon'))
@spot2.photo.attach(io: file, filename: 'le_sillon.jpg', content_type: 'image/jpg')
@spot2.save!

@spot3 = Spot.new(
  name: "Plage de Penfoul",
  description: "Ce spot est bien sympathique et ouvert à tous même s’il vaut mieux avoir déjà quelques heures de surf pour s’y lancer. Pas de danger particuliers pour ce beach-break à surfer à marée montante toute l’année.",
  address: "Chemin de la Plage, 29840 Landunvez, France",
  city: 'Landunvez',
  region: 'Bretagne'
  )
file = URI.open(Cloudinary::Utils.cloudinary_url('assets/seed/Penfoul'))
@spot3.photo.attach(io: file, filename: 'penfoul.jpg', content_type: 'image/jpg')
@spot3.save!

@spot4 = Spot.new(
  name: "Plage de Lostmarc’h",
  description: "Parmi les magnifiques spots de surf de la presqu’île de Crozon, celui de Lostmarc’h est à conseiller tout particulièrement. Son niveau est intermédiaire plus, avec des vagues qui saturent à partir de 3,50 mètres, une forte houle et un vent parfois très puissant. Dans l’idéal, surfer quand la houle entre par l’ouest. A surfer toute l’année ; seul inconvénient : le spot est surchargé l’été.",
  address: "Lostmarc'h Beach, 29160 Crozon, France",
  city: 'Crozon',
  region: 'Bretagne'
  )
file = URI.open(Cloudinary::Utils.cloudinary_url('assets/seed/Lostmarc%E2%80%99h'))
@spot4.photo.attach(io: file, filename: 'lostmarch.jpg', content_type: 'image/jpg')
@spot4.save!

@spot5 = Spot.new(
  name: "Plage de la Torche",
  description: "LE spot de référence en Bretagne, une longue plage de sable et une mer sans grosse difficulté, si ce n’est un léger courant et quelques baïnes. Houles de nord-ouest à sud-ouest pour des vagues interminables à surfer sans modération tout au long de l’année. Attention toutefois, elles peuvent atteindre les 3 mètres fréquemment.",
  address: "Plage de la Torche, 29120 Plomeur, France",
  city: 'Plomeur',
  region: 'Bretagne'
  )
file = URI.open(Cloudinary::Utils.cloudinary_url('assets/seed/La%20Torche'))
@spot5.photo.attach(io: file, filename: 'la_torche.jpg', content_type: 'image/jpg')
@spot5.save!

@spot6 = Spot.new(
  name: "Plage de la Baie des Trépassés",
  description: "Ce beach-break de repli est situé dans un coin sauvage de Bretagne et constitue l’un des sites préférés des surfeurs de la région. De grande vagues qui déroulent sans s’arrêter grâce à un vent Nord-Nord-Ouest puissant, des conditions idéales à marée basse de l’automne au printemps, à marée basse comme à marée haute. Les courants peuvent vous déporter vers les falaises.",
  address: "Rte de la Baie, 29770 Plogoff",
  city: 'Plogoff',
  region: 'Bretagne'
  )
file = URI.open(Cloudinary::Utils.cloudinary_url('assets/seed/Baie%20des%20Tr%C3%A9pass%C3%A9s'))
@spot6.photo.attach(io: file, filename: 'baie_des_trepasses.jpg', content_type: 'image/jpg')
@spot6.save!

@spot7 = Spot.new(
  name: "Plage de Sainte-Barbe",
  description: "Un beach-break que l’on dirait spécialement créé pour les débutants avec ses longues vagues rassurantes et faciles à prendre. A surfer avec un vent Nord-Est et à marée montante, de l’automne au printemps. En s’éloignant de Plouharnel et en se rapprochant de la Côte Sauvage, les vagues s’intensifient et le niveau exigé devient... plus exigeant.",
  address: "Rue de la Plage Sainte-Barbe, Plouharnel, France",
  city: 'Plouharnel',
  region: 'Bretagne'
  )
file = URI.open(Cloudinary::Utils.cloudinary_url('assets/seed/Sainte-Barbe'))
@spot7.photo.attach(io: file, filename: 'sainte_barbe.jpg', content_type: 'image/jpg')
@spot7.save!

@spot8 = Spot.new(
  name: "Plage de Port Rhu",
  description: "Le spot le plus délicat à maîtriser de toute la presqu’île de Quiberon. Une mise à l’eau difficile et des vagues puissantes qui peuvent porter vers la falaise. A ne pas mettre entre toutes les planches !",
  address: "Point de vue Surf, Sentier Côtier, 56510 Saint-Pierre-Quiberon, France",
  city: 'Saint-Pierre-Quiberon',
  region: 'Bretagne'
  )
file = URI.open(Cloudinary::Utils.cloudinary_url('assets/seed/Port%20Rhu'))
@spot8.photo.attach(io: file, filename: 'port_rhu.jpg', content_type: 'image/jpg')
@spot8.save!

@spot9 = Spot.new(
  name: "Plage du Donnant",
  description: "Un spot qui vaut l’aller-retour en bateau depuis Quiberon ! Un beach-break exposé à la houle avec des vagues de belle taille. Côté positif : des ascenseurs qui vous portent entre deux vagues. Côté négatif : un courant dangereux et la proximité des rochers. Privilégier la marée haute si l’on est débutant. Sinon, se contenter d’admirer depuis la plage : c’est déjà très bien.",
  address: "Plage de Donnant 56360 Sauzon ",
  city: 'Belle-île-en-Mer',
  region: 'Bretagne'
  )
file = URI.open(Cloudinary::Utils.cloudinary_url('assets/seed/Donnant'))
@spot9.photo.attach(io: file, filename: 'donnant.jpg', content_type: 'image/jpg')
@spot9.save!

@spot10 = Spot.new(
  name: "Trestraou",
  description: "Un bon shore-break assez accessible avec, parfois, de grosses conditions qui satisfont les confirmés et surprennent les débutants. Attention à bien jauger son niveau. Un spot à surfer à marée montante pendant de l’automne au printemps. Parking et douches à proximité. Attention aux galets lors de la mise à l’eau...",
  address: "BD Joseph le Bihan, 22700, Perros-Guirec, France",
  city: 'Perros-Guirec',
  region: 'Bretagne'
  )
file = URI.open(Cloudinary::Utils.cloudinary_url('assets/seed/Trestaou'))
@spot10.photo.attach(io: file, filename: 'trestaou.jpg', content_type: 'image/jpg')
@spot10.save!

@spot11 = Spot.new(
  name: "Plage de la Grève Blanche",
  description: "Une plage sauvage et préservée, parfaite pour les surfeurs en quête de tranquillité. Les vagues sont souvent puissantes et régulières, offrant d'excellentes sessions de surf. À marée basse, des bancs de sable se forment, créant des vagues idéales pour les débutants.",
  address: "172 Penn Ar Strejou, 29880 Plouguerneau",
  city: 'Plouguerneau',
  region: 'Bretagne'
)
file = URI.open("https://picsum.photos/id/12/600/400")
@spot11.photo.attach(io: file, filename: 'greve_blanche.jpg', content_type: 'image/jpg')
@spot11.save!

@spot12 = Spot.new(
  name: "Plage de la Côte des Basques",
  description: "Un spot emblématique de Biarritz, prisé par les surfeurs du monde entier. Les vagues sont souvent longues et puissantes, offrant des conditions idéales pour le surf. À marée basse, des rochers émergent, ajoutant un défi supplémentaire aux sessions de surf.",
  address: "1 Boulevard du Prince de Galles, 64200 Biarritz, France",
  city: 'Biarritz',
  region: 'Nouvelle-Aquitaine'
)
file = URI.open("https://picsum.photos/id/13/600/400")
@spot12.photo.attach(io: file, filename: 'basques.jpg', content_type: 'image/jpg')
@spot12.save!

@spot13 = Spot.new(
  name: "Plage de la Baule",
  description: "Une plage animée sur la côte atlantique, offrant des vagues adaptées à tous les niveaux de surf. Les débutants apprécient les vagues douces et progressives, tandis que les surfeurs confirmés trouvent des sections plus creuses. À marée basse, des bancs de sable se forment, créant des conditions idéales pour le longboard.",
  address: "Avenue de la Baule, 44500 La Baule-Escoublac, France",
  city: 'La Baule-Escoublac',
  region: 'Pays-de-la-Loire'
)
file = URI.open("https://picsum.photos/id/14/600/400")
@spot13.photo.attach(io: file, filename: 'la_baule.jpg', content_type: 'image/jpg')
@spot13.save!

@spot14 = Spot.new(
  name: "Plage de la Milady",
  description: "Une belle plage de sable fin, parfaite pour les débutants en surf. Les vagues sont généralement douces et régulières, offrant un environnement idéal pour apprendre. À marée basse, des bancs de sable se forment, créant des vagues parfaites pour le longboard.",
  address: "Avenue de la Milady, 64200 Biarritz, France",
  city: 'Biarritz',
  region: 'Nouvelle-Aquitaine'
)
file = URI.open("https://picsum.photos/id/16/600/400")
@spot14.photo.attach(io: file, filename: 'milady.jpg', content_type: 'image/jpg')
@spot14.save!

@spot15 = Spot.new(
  name: "Plage de la Palue",
  description: "Un spot sauvage et préservé sur la presqu'île de Crozon, idéal pour les surfeurs expérimentés. Les vagues sont souvent puissantes et rapides, offrant des sessions de surf intenses. À marée basse, des rochers émergent, créant des sections tubulaires.",
  address: "29470 Crozon, France",
  city: 'Crozon',
  region: 'Bretagne'
)
file = URI.open("https://picsum.photos/id/37/600/400")
@spot15.photo.attach(io: file, filename: 'palue.jpg', content_type: 'image/jpg')
@spot15.save!

@spot16 = Spot.new(
  name: "Plage de la Grande Plage",
  description: "La plage principale de Quiberon, offrant des vagues adaptées à tous les niveaux de surf. Les débutants apprécient les vagues douces et progressives, tandis que les surfeurs confirmés trouvent des sections plus creuses. À marée basse, les bancs de sable offrent des conditions idéales pour le longboard.",
  address: "Boulevard Chanard, 56170 Quiberon, France",
  city: 'Quiberon',
  region: 'Bretagne'
)

file = URI.open("https://picsum.photos/id/51/600/400")
@spot16.photo.attach(io: file, filename: 'grande_plage.jpg', content_type: 'image/jpg')
@spot16.save!

@spot17 = Spot.new(
  name: "Plage du Santocha",
  description: "Un spot animé à Anglet, apprécié par les surfeurs de tous niveaux. Les vagues sont généralement puissantes et rapides, offrant des sessions dynamiques. À marée basse, des bancs de sable se forment, créant des sections propices aux airs et aux manoeuvres radicales.",
  address: "Promenade de la Barre, 64600 Anglet, France",
  city: 'Anglet',
  region: 'Nouvelle-Aquitaine'
)

file = URI.open("https://picsum.photos/id/74/600/400")
@spot17.photo.attach(io: file, filename: 'santocha.jpg', content_type: 'image/jpg')
@spot17.save!

@spot18 = Spot.new(
  name: "Plage de la Barre",
  description: "Une plage familiale à Anglet, offrant des vagues adaptées à tous les niveaux de surf. Les débutants apprécient les vagues douces et progressives, tandis que les surfeurs confirmés trouvent des sections plus creuses. À marée basse, des bancs de sable se forment, créant des conditions propices au longboard.",
  address: "299 Av. de l'Adour, 64600 Anglet",
  city: 'Anglet',
  region: 'Nouvelle-Aquitaine'
)

file = URI.open("https://picsum.photos/id/77/600/400")
@spot18.photo.attach(io: file, filename: 'la_barre.jpg', content_type: 'image/jpg')
@spot18.save!

@spot19 = Spot.new(
  name: "Plage du Gros Jonc",
  description: "Une plage préservée sur l'île de Ré, offrant des vagues parfaites pour le longboard. Les vagues sont généralement douces et régulières, créant un environnement idéal pour les surfeurs débutants et intermédiaires. À marée basse, des bancs de sable se forment, offrant des conditions optimales pour le surf.",
  address: "Avenue du Pas des Boeufs, 17580 Le Bois-Plage-en-Ré, France",
  city: 'Le Bois-Plage-en-Ré',
  region: 'Nouvelle-Aquitaine'
)

file = URI.open("https://picsum.photos/id/92/600/400")
@spot19.photo.attach(io: file, filename: 'gros_jonc.jpg', content_type: 'image/jpg')
@spot19.save!

@spot20 = Spot.new(
  name: "Plage de la Pointe du Cap Ferret",
  description: "Une plage sauvage et préservée sur la presqu'île du Cap Ferret, offrant des vagues idéales pour les surfeurs expérimentés. Les vagues sont souvent puissantes et rapides, offrant des sessions de surf intenses. À marée basse, des bancs de sable se forment, créant des sections propices aux airs et aux manoeuvres radicales.",
  address: "Avenue de Bordeaux, 33950 Lège-Cap-Ferret, France",
  city: 'Lège-Cap-Ferret',
  region: 'Nouvelle-Aquitaine'
)

file = URI.open("https://picsum.photos/id/124/600/400")
@spot20.photo.attach(io: file, filename: 'cap_ferret.jpg', content_type: 'image/jpg')
@spot20.save!

@spot21 = Spot.new(
  name: "Plage de la Madrague",
  description: "Cette vaste plage surveillée située à la périphérie de Saint-Cyr-sur-Mer est idéale pour la baignade, le bronzage et le surf.",
  address: "561 Rte de la Madrague, 83270 Saint-Cyr-sur-Mer",
  city: 'Saint-Cyr-sur-Mer',
  region: 'Provence-Alpes-Côte d’Azur'
)

file = URI.open("https://picsum.photos/id/131/600/400")
@spot21.photo.attach(io: file, filename: 'madrague.jpg', content_type: 'image/jpg')
@spot21.save!

@spot22 = Spot.new(
  name: "Plage du Porge",
  description: "Une plage sauvage et préservée sur la côte atlantique, offrant des vagues puissantes et rapides. Les surfeurs expérimentés apprécient les conditions stimulantes offertes par cette plage. À marée basse, des bancs de sable se forment, créant des sections tubulaires.",
  address: "33980 Le Porge, France",
  city: 'Le Porge',
  region: 'Nouvelle-Aquitaine'
)

file = URI.open("https://picsum.photos/id/135/600/400")
@spot22.photo.attach(io: file, filename: 'porge.jpg', content_type: 'image/jpg')
@spot22.save!

@spot23 = Spot.new(
  name: "Plage de la Govelle",
  description: "Longue étendue de sable fin avec des affleurements rocheux, prisée pour le surf ainsi que la pêche et la baignade à marée basse.",
  address: "20 Rte de la Govelle, 44740 Batz-sur-Mer",
  city: 'Batz-sur-Mer',
  region: 'Pays-de-la-Loire'
)

file = URI.open("https://picsum.photos/id/144/600/400")
@spot23.photo.attach(io: file, filename: 'govelle.jpg', content_type: 'image/jpg')
@spot23.save!

@spot24 = Spot.new(
  name: "Plage de la Garoupe",
  description: "Une plage élégante à Antibes, offrant des vagues parfaites pour le longboard. Les vagues sont généralement douces et régulières, créant un environnement idéal pour les surfeurs débutants et intermédiaires. À marée basse, des bancs de sable se forment, offrant des conditions optimales pour le surf.",
  address: "Boulevard Kennedy, 06600 Antibes, France",
  city: 'Antibes',
  region: 'Provence-Alpes-Côte d’Azur'
)

file = URI.open("https://picsum.photos/id/147/600/400")
@spot24.photo.attach(io: file, filename: 'garoupe.jpg', content_type: 'image/jpg')
@spot24.save!

@spot25 = Spot.new(
  name: "Plage du Môle",
  description: "Une plage tranquille à Noirmoutier-en-l'Île, offrant des vagues douces et progressives. Les débutants en surf apprécient les conditions favorables offertes par cette plage. À marée basse, des bancs de sable se forment, créant des conditions idéales pour le longboard.",
  address: "85330 Noirmoutier-en-l'Île, France",
  city: "Noirmoutier-en-l'Île",
  region: 'Pays-de-la-Loire'
)

file = URI.open("https://picsum.photos/id/154/600/400")
@spot25.photo.attach(io: file, filename: 'mole.jpg', content_type: 'image/jpg')
@spot25.save!

@spot26 = Spot.new(
  name: "Plage de la Paracou",
  description: "Une plage préservée à Talmont-Saint-Hilaire, offrant des vagues douces et régulières, idéales pour les surfeurs de tous niveaux. Les vagues sont généralement propices à l'apprentissage du surf. À marée basse, des bancs de sable se forment, créant des conditions idéales pour le longboard.",
  address: "85440 Talmont-Saint-Hilaire, France",
  city: "Talmont-Saint-Hilaire",
  region: 'Pays-de-la-Loire'
)

file = URI.open("https://picsum.photos/id/176/600/400")
@spot26.photo.attach(io: file, filename: 'paracou.jpg', content_type: 'image/jpg')
@spot26.save!

@spot27 = Spot.new(
  name: "Plage de Tresmeur",
  description: "Une plage pittoresque à Trébeurden, offrant des vagues idéales pour les surfeurs de tous niveaux. Les vagues sont généralement douces et progressives, créant un environnement propice à l'apprentissage du surf. À marée basse, des bancs de sable se forment, offrant des conditions optimales pour le longboard.",
  address: "C8 Rue de Traou Meur, 22343 Trébeurden",
  city: "Trébeurden",
  region: 'Bretagne'
)

file = URI.open("https://picsum.photos/id/179/600/400")
@spot27.photo.attach(io: file, filename: 'tresmeur.jpg', content_type: 'image/jpg')
@spot27.save!

@spot28 = Spot.new(
  name: "Plage du Ris",
  description: "Une plage familiale à Douarnenez, offrant des vagues adaptées à tous les niveaux de surf. Les débutants apprécient les vagues douces et progressives, tandis que les surfeurs confirmés trouvent des sections plus creuses. À marée basse, des bancs de sable se forment, créant des conditions idéales pour le longboard.",
  address: "Plage du Ris, 29100 Douarnenez, France",
  city: "Douarnenez",
  region: 'Bretagne'
)

file = URI.open("https://picsum.photos/id/199/600/400")
@spot28.photo.attach(io: file, filename: 'ris.jpg', content_type: 'image/jpg')
@spot28.save!

@spot29 = Spot.new(
  name: "Plage de la Corniche",
  description: "Une plage pittoresque à Marseille, offrant des vagues idéales pour les surfeurs débutants et intermédiaires. Les vagues sont généralement douces et régulières, créant un environnement propice à l'apprentissage du surf. À marée basse, des bancs de sable se forment, offrant des conditions optimales pour le longboard.",
  address: "Avenue Pierre Mendès France, 13007 Marseille, France",
  city: 'Marseille',
  region: 'Provence-Alpes-Côte d’Azur'
)

file = URI.open("https://picsum.photos/id/203/600/400")
@spot29.photo.attach(io: file, filename: 'corniche.jpg', content_type: 'image/jpg')
@spot29.save!

@spot30 = Spot.new(
  name: "Plage de la Côte des Basques",
  description: "Un spot emblématique de Biarritz, prisé par les surfeurs du monde entier. Les vagues sont souvent longues et puissantes, offrant des conditions idéales pour le surf. À marée basse, des rochers émergent, ajoutant un défi supplémentaire aux sessions de surf.",
  address: "1 Boulevard du Prince de Galles, 64200 Biarritz, France",
  city: 'Biarritz',
  region: 'Nouvelle-Aquitaine'
)

file = URI.open("https://picsum.photos/id/215/600/400")
@spot30.photo.attach(io: file, filename: 'basques.jpg', content_type: 'image/jpg')
@spot30.save!

puts "Spots créés!"

puts "Création seed api"
now = Time.now
@spots = Spot.find_each do |spot|
  WeatherService.call(spot)
end
after = Time.now
p (after - now).to_i

puts "Deuxième api"

now = Time.now
@spots = Spot.find_each do |spot|
  WeatherService.call_water_weather(spot)
end
p (after - now).to_i
puts "Seed api fin"

puts "Création de nouvelles évaluations..."
# Users
users = [
  @user_perrine, @user_cedric, @user_mathieu, @user_marine,
  @user_john, @user_emily, @user_david, @user_sophia, @user_olivia,
  @user_alexander, @user_isabella, @user_michael, @user_sophie, @user_jacob,
]

# Spots
spots = [
  @spot3, @spot4, @spot6, @spot7, @spot8, @spot9, @spot10,
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

  user = @user_alexander
  spot = @spot1
  content = reviews.sample
  rate = 4
  difficulty = 1
  created_at = Faker::Time.between(from: DateTime.now - 1.month, to: DateTime.now)
  @review_alexander = Review.create!(content: content, spot: spot, user: user, rate: rate, difficulty: difficulty, created_at: created_at)

  user = @user_mathieu
  spot = @spot1
  content = reviews.sample
  rate = 5
  difficulty = 1
  created_at = Faker::Time.between(from: DateTime.now - 1.month, to: DateTime.now)
  @review_mathieu = Review.create!(content: content, spot: spot, user: user, rate: rate, difficulty: difficulty, created_at: created_at)

  user = @user_perrine
  spot = @spot1
  content = reviews.sample
  rate = 4
  difficulty = 1
  created_at = Faker::Time.between(from: DateTime.now - 1.month, to: DateTime.now)
  @review_perrine = Review.create!(content: content, spot: spot, user: user, rate: rate, difficulty: difficulty, created_at: created_at)

  user = @user_sophie
  spot = @spot1
  content = reviews.sample
  rate = 5
  difficulty = 1
  created_at = Faker::Time.between(from: DateTime.now - 1.month, to: DateTime.now)
  @review_sophie = Review.create!(content: content, spot: spot, user: user, rate: rate, difficulty: difficulty, created_at: created_at)

  user = @user_cedric
  spot = @spot1
  content = reviews.sample
  rate = 5
  difficulty = 1
  created_at = Faker::Time.between(from: DateTime.now - 1.month, to: DateTime.now)
  @review_cedric = Review.create!(content: content, spot: spot, user: user, rate: rate, difficulty: difficulty, created_at: created_at)

  user = @user_marine
  spot = @spot2
  content = reviews.sample
  rate = 4
  difficulty = 2
  created_at = Faker::Time.between(from: DateTime.now - 1.month, to: DateTime.now)
  @review_marine = Review.create!(content: content, spot: spot, user: user, rate: rate, difficulty: difficulty, created_at: created_at)

  user = @user_john
  spot = @spot2
  content = reviews.sample
  rate = 4
  difficulty = 2
  created_at = Faker::Time.between(from: DateTime.now - 1.month, to: DateTime.now)
  @review_john = Review.create!(content: content, spot: spot, user: user, rate: rate, difficulty: difficulty, created_at: created_at)


  user = @user_david
  spot = @spot5
  content = reviews.sample
  rate = 4
  difficulty = 2
  created_at = Faker::Time.between(from: DateTime.now - 1.month, to: DateTime.now)
  @review_david = Review.create!(content: content, spot: spot, user: user, rate: rate, difficulty: difficulty, created_at: created_at)

100.times do
    user = users.sample
    spot = spots.sample
    if Review.exists?(user_id: user.id, spot_id: spot.id)
      puts "#{user.nickname} a déjà une évaluation pour #{spot.name}. Skipping..."
      next
    end
    content = reviews.sample
    rate = rand(3..4)
    difficulty = rand(1..3)
    created_at = Faker::Time.between(from: DateTime.now - 1.month, to: DateTime.now)
    Review.create!(content: content, spot: spot, user: user, rate: rate, difficulty: difficulty, created_at: created_at)
end

puts "Évaluations créées!"

puts "Création de likes"
6.times do
  Like.create!(user: users.sample, review: @review_alexander)
end

3.times do
  Like.create!(user: users.sample, review: @review_mathieu)
end

12.times do
  Like.create!(user: users.sample, review: @review_perrine)
end

7.times do
  Like.create!(user: users.sample, review: @review_sophie)
end

4.times do
  Like.create!(user: users.sample, review: @review_cedric)
end

5.times do
  Like.create!(user: users.sample, review: @review_david)
end

6.times do
  Like.create!(user: users.sample, review: @review_alexander)
end

7.times do
  Like.create!(user: users.sample, review: @review_marine)
end

2.times do
  Like.create!(user: users.sample, review: @review_john)
end

puts "Likes créés!"

puts "Création de bookmarks"

user = @user_melanie
created_at = Faker::Time.between(from: DateTime.now - 1.month, to: DateTime.now)
Bookmark.create!(user: user, spot: @spot2, created_at: created_at)
Bookmark.create!(user: user, spot: @spot5, created_at: created_at)

user = @user_kelly
created_at = Faker::Time.between(from: DateTime.now - 1.month, to: DateTime.now)
Bookmark.create!(user: user, spot: @spot1, created_at: created_at)

100.times do
  user = users.sample
  spot = spots.sample

  existing_bookmark = Bookmark.find_by(user: user, spot: spot)

  if existing_bookmark.nil?
    created_at = Faker::Time.between(from: DateTime.now - 1.month, to: DateTime.now)
    Bookmark.create!(user: user, spot: spot, created_at: created_at)
  else
    puts "Un bookmark existe déjà pour cet utilisateur et ce spot. Skipping..."
  end
end
puts "Bookmarks créés!"

puts "Création d'amis"

created_at = Faker::Time.between(from: DateTime.now - 1.month, to: DateTime.now)
Follow.create!(follower: @user_melanie, followed: @user_kelly, created_at: created_at)
Follow.create!(follower: @user_mathieu, followed: @user_melanie, created_at: created_at)
Follow.create!(follower: @user_perrine, followed: @user_melanie, created_at: created_at)
Follow.create!(follower: @user_cedric, followed: @user_melanie, created_at: created_at)
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

puts "Création des photos"

sillon_photos = ["https://th.bing.com/th/id/OIP.0YQbmBK_28P0Ee38978KgwHaE8?w=266&h=180&c=7&r=0&o=5&dpr=1.5&pid=1.7", "https://th.bing.com/th/id/OIP.JkFeh7FVFzwxQe2whgHDOgHaE7?w=236&h=180&c=7&r=0&o=5&dpr=1.5&pid=1.7", "https://th.bing.com/th/id/OIP.vaqsRmIhnuFcHI_8mF7P4wHaE7?w=243&h=180&c=7&r=0&o=5&dpr=1.5&pid=1.7", "https://th.bing.com/th/id/OIP.dNf3KYBDg9hE0cFopI_tMQHaE8?w=278&h=185&c=7&r=0&o=5&dpr=1.5&pid=1.7", "https://th.bing.com/th/id/OIP.63-nmI3n9CSEig7B01G-OgHaHa?w=195&h=195&c=7&r=0&o=5&dpr=1.5&pid=1.7", "https://th.bing.com/th/id/OIP.HQnhLCZZXrZNRRdxUgOj3gHaEK?w=309&h=180&c=7&r=0&o=5&dpr=1.5&pid=1.7", "https://th.bing.com/th/id/OIP.ufUwgO4yx1Zk8DpQQbMZ5AHaE8?w=272&h=181&c=7&r=0&o=5&dpr=1.5&pid=1.7", "https://th.bing.com/th/id/OIP.A1Qef5a1Pndqi0X0R4s_mwHaEK?w=278&h=180&c=7&r=0&o=5&dpr=1.5&pid=1.7"]
sillon_photos.each_with_index do |photo, index|
  file = URI.open(photo)
  photo = Photo.new(user: @user_marine , spot: @spot2)
  photo.images.attach(io: file, filename: "#{photo.spot}_#{index + 1}")
  photo.save
end

puts "Photos pour le sillon ajoutées"

la_torche_photos = ["https://th.bing.com/th?id=OIP.TrP9fD29j5OWztIqqYazxwHaE8&w=306&h=204&c=8&rs=1&qlt=90&o=6&dpr=1.5&pid=3.1&rm=2", "https://th.bing.com/th?id=OIP.wfhVm3aQcKwByw2RPwYwIAHaEK&w=333&h=187&c=8&rs=1&qlt=90&o=6&dpr=1.5&pid=3.1&rm=2", "https://th.bing.com/th?id=OIP.jThtuIeIBh1YXNKTNp21LwHaEF&w=336&h=185&c=8&rs=1&qlt=90&o=6&dpr=1.5&pid=3.1&rm=2", "https://th.bing.com/th?id=OIP.92GZV0H7riEilZLpFyUn8wHaE7&w=306&h=203&c=8&rs=1&qlt=90&o=6&dpr=1.5&pid=3.1&rm=2", "https://th.bing.com/th?id=OIP.iVNe1ccQ2FR-_WIfE5wsZwHaFj&w=288&h=216&c=8&rs=1&qlt=90&o=6&dpr=1.5&pid=3.1&rm=2", "https://th.bing.com/th/id/OIP.MS-DhfMwQ0Ql_FAaEfIIXgHaFj?w=225&h=180&c=7&r=0&o=5&dpr=1.5&pid=1.7", "https://th.bing.com/th/id/OIP.b4eX6QW4kcKAdMFiXkNlKgHaDf?rs=1&pid=ImgDetMain", "https://th.bing.com/th/id/OIP.YRx2gYKDfsrvrKmrTXNSJAHaFD?w=264&h=180&c=7&r=0&o=5&dpr=1.5&pid=1.7"]
la_torche_photos.each_with_index do |photo, index|
  file = URI.open(photo)
  photo = Photo.new(user: @user_marine , spot: @spot5)
  photo.images.attach(io: file, filename: "#{photo.spot}_#{index + 1}")
  photo.save
end

puts "Photos pour la torche ajoutées"

les_longchamps_photos = ["https://media-cdn.tripadvisor.com/media/photo-o/08/f2/97/17/longchamps-beach.jpg", "https://media-cdn.tripadvisor.com/media/photo-s/08/f2/97/13/longchamps-beach.jpg", "https://media-cdn.tripadvisor.com/media/photo-s/08/f2/97/2b/longchamps-beach.jpg", "https://media-cdn.tripadvisor.com/media/photo-o/08/f2/96/f6/longchamps-beach.jpg", "https://cdt35.media.tourinsoft.eu/upload/LONGCHAMP-2.JPG", "https://dynamic-media-cdn.tripadvisor.com/media/photo-o/08/77/22/90/longchamps-beach.jpg?w=1200&h=-1&s=1", "https://th.bing.com/th/id/OIP.-j1AspPWMLRMfm_JPch1PwHaDx?w=319&h=177&c=7&r=0&o=5&dpr=1.5&pid=1.7", "https://th.bing.com/th/id/OIP.GXmp47zeKLCnVNW6ENY1DgHaE8?w=257&h=180&c=7&r=0&o=5&dpr=1.5&pid=1.7"]
les_longchamps_photos.each_with_index do |photo, index|
  file = URI.open(photo)
  photo = Photo.new(user: @user_marine , spot: @spot1)
  photo.images.attach(io: file, filename: "#{photo.spot}_#{index + 1}")
  photo.save
end

puts "Photos pour les longchamps ajoutées"

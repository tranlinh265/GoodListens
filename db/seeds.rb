# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.firs
random = Random.new

99.times do |n|
	name = Faker::Name.name
	email = "example-#{n+1}@gmail.org"
	password = "123456"
	User.create!(name: name,
				 email: email,
				 password: password,
				 password_confirmation: password,
				 intro: "This is user example-#{n+1}")
end

200.times do |n|
	title = Faker::Music.key
	desc = "This is description for #{title}."
	author = Faker::Name.name
	category_id = random.rand(10)
	Song.create!(title: title,
		description: desc,
		author_name: author,
		category_id: category_id)
end

Song.all.each do |s|
	title = Faker::Book.title
	content = Faker::HarryPotter.quote
	user_id = User.find(random.rand(1..50))
	Review.create!( title: title,
		content: content,
		user_id: user_id,
		song_id: s.id
		)
end

50.times do |x|
	name = Faker::Name.name
	Singer.create(name: name)
end

Song.all.each do |s|
	id = Singer.find(random.rand(1..30))
	SongSinger.create!( singer_id: id,
		song_id: s.id
		)
end
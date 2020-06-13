# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts "Cleaning database..."
Babysit.destroy_all
Kid.destroy_all
Event.destroy_all
User.destroy_all

puts "Creating Users, Kids, Babysits and Events..."

	family1 = User.create!(
		first_name: "Romain",
		last_name: "Garcia",
		email: "romaingarcia@gmail.com",
		password: "password",
		is_nanny: false,
		address: "137 rue du Paradis, Marseille",
		phone_number: "0670326392"
		)

	nanny1 = User.create!(
		first_name: "Katie",
		last_name: "Dupont",
		email: "katiedupont@gmail.com",
		password: "password",
		is_nanny: true,
		address: "49 rue de Lodi, Marseille",
		phone_number: "0622983611"
		)

	kid1 = Kid.new(
		first_name: "Léo",
		age: 6,
		food_habit: "Aime les courgettes",
		health_habit: "Allergique au pollen",
		sleep_habit: "Siestes vers 15h",
		weight: 7
		)

	kid2 = Kid.new(
		first_name: "Jade",
		age: 11,
		food_habit: "1er biberons à 9h",
		sleep_habit: "Sommeil agité..",
		weight: 15
		)

	kid3 = Kid.new(
		first_name: "Enzo",
		age: 35,
		food_habit: "Gourmand",
		health_habit: "En super forme",
		weight: 25
		)

	kid1.parent = family1
	kid2.parent = family1
	kid3.parent = family1
	kid1.save
	kid2.save
	kid3.save

	babysit1 = Babysit.new(
		begin_date: DateTime.now,
		validated: true
		)
	babysit2 = Babysit.new(
		begin_date: DateTime.now,
		validated: false
		)

	babysit1.nanny = nanny1
	babysit1.kid = kid1

	babysit2.nanny = nanny1
	babysit2.kid = kid2

	babysit1.save
	babysit2.save

	event1 = Event.new(
		begin_event: DateTime.now,
		end_event: DateTime.now,
		tag: "Repas",
		content: "Comme attendu Léo à adoré ses courgettes!!"
	)
	event2 = Event.new(
		begin_event: DateTime.now,
		end_event: DateTime.now,
		tag: "Dodo",
		content: "Léo à fait une belle sieste"
	)
	event3 = Event.new(
		begin_event: DateTime.now,
		end_event: DateTime.now,
		tag: "Activité",
		content: "Jade à fait une belle peinture"
	)

	event1.babysit = babysit1
	event2.babysit = babysit1
	event3.babysit = babysit2

	event1.save
	event2.save
	event3.save


puts "Finished!"
puts "#{User.count} items created"
puts "#{Babysit.count} users created"
puts "#{Event.count} users created"
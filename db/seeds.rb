# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

gian = User.create(username: 'gian', password: 'password')

record1 = SugarRecord.find_or_create_by(value: 90.5, user_id: gian.id, date: DateTime.now()-2)
record2 = SugarRecord.find_or_create_by(value: 75.10, user_id: gian.id, date: DateTime.now()-1)
record3 = SugarRecord.find_or_create_by(value: 50.90, user_id: gian.id, date: DateTime.now())
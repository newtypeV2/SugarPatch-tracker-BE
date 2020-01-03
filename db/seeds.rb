# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

gian = User.create(username: 'gian', password: 'password')
claire = User.create(username: 'claire', password: 'password')

record1 = SugarRecord.find_or_create_by(value: 90.5, user_id: gian.id, date: DateTime.now()-30)
record2 = SugarRecord.find_or_create_by(value: 75.10, user_id: gian.id, date: DateTime.now()-29)
record3 = SugarRecord.find_or_create_by(value: 50.90, user_id: gian.id, date: DateTime.now()-28)


comment1 = Comment.find_or_create_by(sugar_record_id: record1.id, text: "After Kogiya.", date: DateTime.now()-30)
comment2 = Comment.find_or_create_by(sugar_record_id: record2.id, text: "Chinese Takeout", date: DateTime.now()-29)
comment3 = Comment.find_or_create_by(sugar_record_id: record3.id, text: "Salad Party :(", date: DateTime.now()-28)

x = 3;
while(x <= 30) do
    loop_record = SugarRecord.find_or_create_by(value: (rand(25.5..99.99)+(x/10)), user_id: gian.id, date: DateTime.now()-(30-x))
    Comment.find_or_create_by(sugar_record_id: loop_record.id, text: "Comment on loop item #{x}", date: DateTime.now()-(30-x))
    x += 1
end


puts 'seeding done'
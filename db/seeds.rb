# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
fast1 = Fast.create(start: "", end: "")
day1 = Day.create(name_of_day: "Monday", date: "2014-1-1", total_hours_fasted: 22 )
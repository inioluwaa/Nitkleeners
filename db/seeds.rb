# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
=begin

User.create!(name:  'Example User',
             email: 'inioluwa@example.org',
             phone_number: '09051947701',
             password:              'foobar',
             password_confirmation: 'foobar')

99.times do |n|
  name  = Faker::Name.name
  email = "example-#{n+1}@railstutorial.org"
  phone_number = Faker::Config.locale = 'en-NG'
  password = 'password'
  User.create!(name:  name,
               email: email,
               phone_number: phone_number,
               password:              password,
               password_confirmation: password)
end
=end

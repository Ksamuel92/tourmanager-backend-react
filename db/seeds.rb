# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

user = User.create! name: 'Kyle Samuel', email: 'newemail@gmail.com', password: 'topsecret',
                    password_confirmation: 'topsecret'

promoter = Promoter.create! name: 'Promoter Joe', email: 'joe@gmail.com'

show = user.shows.create!(venue: 'NBT', date: '2021-11-23T15:22:34Z', loadin: '2021-11-23T15:22:34Z', guarantee: 1000,
                          merch: 1000, green_room: true, wifi: 'wifi info', promoter: promoter)

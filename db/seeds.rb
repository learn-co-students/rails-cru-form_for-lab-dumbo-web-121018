# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Song.destroy_all
Artist.destroy_all
Genre.destroy_all

a1 = Artist.create(name: 'Remo Drive', bio: 'Small art rock band from Minnesota')
g1 = Genre.create(name: 'Art Rock')
s1 = Song.create(name: "I'm my own doctor", artist_id: a1.id, genre_id: g1.id)
a1.songs << s1
g1.songs << s1

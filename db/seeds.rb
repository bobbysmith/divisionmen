# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


users = User.create([{email: "imlostinberlin@yahoo.com", encrypted_password: "password1"}])

videos = Video.create([{title: "Always", url: "akiJdM2X_-Q"}])

songs = Song.create([{title: "We Can Dream", url: "https://soundcloud.com/divisionmen/we-can-dream"}])

tours = Tour.create([{venue: "Mohawk", city: "Austin, TX", url: "http://mohawkaustin.com", date: "August, 25 2014"}])

blogs = Blog.create([{title: "TV", article: "We have a new video up on youtube. We have also got a new album available for purchase. It's called 'Under the Gun' We have got some shows listed as well. Thnx. DVM"}])

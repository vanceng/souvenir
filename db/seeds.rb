# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
  User.create!(first_name: "Sarah", last_name: "Clinton-Baker", email: "sarah@sarah.com", password: "password", website: "www.sarahclintonbaker.com", twitter: "@sclintonbaker", facebook: "www.facebook.com/sarahclintonbaker", biography: "Travelling and working my way around the globe!" , profile_photo: "https://scontent-sea.xx.fbcdn.net/hphotos-xpf1/v/t1.0-9/1610883_10203076067016102_4430863146774951568_n.jpg?oh=5378969c3ee406a358f415b7d55a8796&oe=55D11307")
  User.create!(first_name: "Vance", last_name: "Ng", email: "vance@vance.com", password: "password", website: "www.vanceng.com", twitter: "@vanceng", facebook: "www.facebook.com/vanceng", biography: "Coffee is my drug of choice!" , profile_photo: "https://scontent-sea.xx.fbcdn.net/hphotos-xap1/v/t1.0-9/1157430_10153132528690587_1256072416_n.jpg?oh=7a527d3ef9df30098c3a5d38e624b0a7&oe=55CA32E0")
  User.create!(first_name: "Sakthi", last_name: "Pravag", email: "sakthi@sakthi.com", password: "password", website: "www.sakthipravag.com", twitter: "@sakthipravag", facebook: "www.facebook.com/sakthipravag", biography: "Can't wait to see the rest of the world." , profile_photo: "https://avatars.githubusercontent.com/u/11703030?v=3")

  Memory.create!(traveller_id: 1,city: "vancouver", comment: "The Steamclock rings on the hour. An icon of Gastown.", category: "landmark", photo_url: "/img/city/vancouver.jpg", latitude: 49.284436, longitude: -123.108896)
  Memory.create!(traveller_id: 1,city: "Vancouver", comment: "This Coffee was one of the best I ever had.", category: "food", photo_url: "/img/city/vancouver2.jpg", latitude: 49.283915, longitude: -123.109554)
  Memory.create!(traveller_id: 1,city: "Vancouver",comment: "Walking in Lynn canyon felt like I was in a land forgotten by time.", category: "nature", photo_url: "/img/city/vancouver3.jpg", latitude: 49.339074, longitude: -123.018063)
  Memory.create!(traveller_id: 1,city: "Vancouver",comment: "The view from the float plane was incredible!", category: "view", photo_url: "./img/city/vancouver4.jpg", latitude: 49.2890192, longitude: -123.1239276)
  Memory.create!(traveller_id: 1,city: "Goa",comment: "The beaches were unlike anything I have ever seen. Try a Mango Lassi from a local vendor!", category: "view", photo_url: "/img/city/goa.jpg", latitude: 15.221003, longitude: 73.936534)
  Memory.create!(traveller_id: 1,city: "Goa",comment: "Watching the sun set over the water sent chills through my body.", category: "view", photo_url: "/img/city/goa2.jpg", latitude: 15.2185497, longitude: 73.9309366)
  Memory.create!(traveller_id: 1,city: "Goa",comment: "These caves reminded me of something out of a movie.", category: "nature", photo_url: "/img/city/goa3.jpg", latitude: 15.551828, longitude: 74.024991)
  Memory.create!(traveller_id: 2,city: "Paris",comment: "I loved this view of the Tour Eiffel.", category: "landmark", photo_url: "/img/city/paris.jpg", latitude: 48.85837, longitude: 2.294481)
  Memory.create!(traveller_id: 2,city: "Paris",comment: "Magical memories created with my children riding this carousel.", category: "activity", photo_url: "/img/city/paris2.jpg", latitude: 48.846204, longitude: 2.334198)
  Memory.create!(traveller_id: 2,city: "Paris",comment: "I couldn't believe the traffic around the Arc de Triompe!", category: "landmark", photo_url: "/img/city/paris3.jpg", latitude: 48.873792, longitude: 2.295028)
  Memory.create!(traveller_id: 3,city: "Geneva",comment: "The Alps, what a view!", category: "view", photo_url: "/img/city/switzerland.jpg", latitude: 46.203105, longitude: 6.14308)
  Memory.create!(traveller_id: 3,city: "Geneva",comment: "This etching is such an amazing feat of engineering!", category: "landmark", photo_url: "/img/city/switzerland2.jpg", latitude: 46.2050295, longitude: 6.1440885)

a = Memory.create!(traveller_id: 1, title: "Steamclock",description: "The Steamclock rings on the hour. An icon of Gastown.",category: "landmark",latitude: 49.284436,longitude: -123.108896,city: "Vancouver",google_place_id: ,media_url: )
b = Memory.create!(traveller_id: 1, title: "Coffee at Prado", description: "This Coffee was one of the best I ever had.", category: "food", latitude: 49.283915, longitude: -123.109554, city: "Vancouver", google_place_id: , media_url: )
c = Memory.create!(traveller_id: 1, title: "Hiking at Lynn Canyon", description: "Walking in Lynn canyon felt like I was in a land forgotten by time.", category: "nature", latitude: 49.339074, longitude: -123.018063, city: "Vancouver", google_place_id: , media_url: )
d = Memory.create!(traveller_id: 1, title: "Float Plane Ride", description: "The view from the float plane was incredible!", category: "view", latitude: 49.2890192,, longitude: -123.1239276, city: , google_place_id: , media_url: )
e = Memory.create!(traveller_id: 1, title: "Beaches in Goa", description: "The beaches were unlike anything I have ever seen. Try a Mango Lassi from a local vendor!", category: "view", latitude: 15.221003, longitude: 73.936534, city: , google_place_id: , media_url: )
f = Memory.create!(traveller_id: 1, title: "Sunday Sunset", description: "Watching the sun set over the water sent chills through my body.", category: "view", latitude: 15.2185497, longitude: 73.9309366), city: , google_place_id: , media_url: )
g = Memory.create!(traveller_id: 1, title: "Spelunking", description: "These caves reminded me of something out of a movie.", category: "nature", latitude: 15.551828, longitude: 74.024991, city: , google_place_id: , media_url: )
Memory.create!(traveller_id: 2, title: "La Tour Eiffel", description: "I loved this view of the Tour Eiffel.", category: "view", latitude: 48.85837, longitude: 2.294481, city: , google_place_id: , media_url: )
Memory.create!(traveller_id: 2, title: "Carousel Rides", description: "Magical memories created with my children riding this carousel.", category: "activity", latitude: 48.846204, longitude: 2.334198, city: , google_place_id: , media_url: )
Memory.create!(traveller_id: 2, title: "The Roundabout", description: "I couldn't believe the traffic around the Arc de Triompe!", category: "landmark", latitude: 48.873792, longitude: 2.295028, city: , google_place_id: , media_url: )
Memory.create!(traveller_id: 3, title: "Mountain Memories", description: "The Alps, what a view!", category: "view", latitude: 46.203105, longitude: 6.14308, city: , google_place_id: , media_url: )
Memory.create!(traveller_id: 3, title: "Carving in the Mountain", description: "This etching is such an amazing feat of engineering!", category: "landmark", latitude: 46.2050295, longitude: 6.1440885, city: , google_place_id: , media_url: )
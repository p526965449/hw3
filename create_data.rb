Place.destroy_all

Mexico_City = Place.new
Mexico_City["name"] = "Mexico_City"
Mexico_City.save

Charleston = Place.new
Charleston["name"] = "Charleston"
Charleston.save

Beijing = Place.new
Beijing["name"] = "Beijing"
Beijing.save

Amsterdam = Place.new
Amsterdam["name"] = "Amsterdam"
Amsterdam.save

# t.string "title"
# t.text "description"
# t.date "posted_on"
# t.integer "place_id"

Mexico_city_1 = Entry.new
Mexico_city_1["title"] = "Ate tacos"
Mexico_city_1["description"] = "It was good but expensive"
Mexico_city_1["posted_on"] = 02-07-2024
Mexico_city_1["place_id"] = Mexico_City["id"]
Mexico_city_1.save

puts "There are now #{Place.all.count} places"
puts "There are now #{Entry.all.count} enrties"
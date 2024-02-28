Place.destroy_all
Entry.destroy_all

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

Charleston_1 = Entry.new
Charleston_1["title"] = "Met John"
Charleston_1["description"] = "It was good but expensive"
Charleston_1["posted_on"] = 02-07-2024
Charleston_1["place_id"] = Charleston["id"]
Charleston_1.save

Beijing_1 = Entry.new
Beijing_1["title"] = "Ate tacos"
Beijing_1["description"] = "It was good but expensive"
Beijing_1["posted_on"] = 02-07-2024
Beijing_1["place_id"] = Beijing["id"]
Beijing_1.save

Amsterdam_1 = Entry.new
Amsterdam_1["title"] = "Attended a wedding"
Amsterdam_1["description"] = "It was good but expensive"
Amsterdam_1["posted_on"] = 02-07-2024
Amsterdam_1["place_id"] = Amsterdam["id"]
Amsterdam_1.save

puts "There are now #{Place.all.count} places"
puts "There are now #{Entry.all.count} enrties"
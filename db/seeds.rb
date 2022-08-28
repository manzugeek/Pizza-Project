# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
# ENV["TRL_KEY"]
# ENV["TRL_TOKEN"]

# response = RestClient.get("https://api.trello.com/1/boards/630519316797a40076b0a857/cards?key=#{ENV["TRL_KEY"]}&token=#{ENV["TRL_TOKEN"]}")
# cards = JSON.parse(response)

# cards_array = [ ]
# cards.each do |card|
#     cards_array << card["name"]
#     binding.pry
# end

response = RestClient.get("https://api.trello.com/1/boards/630519316797a40076b0a857/lists?cards=all&fields=name&key=#{ENV["TRL_KEY"]}&token=#{ENV["TRL_TOKEN"]}")
list_data = JSON.parse(response)


list_data.each do |list|
    list["name"]
    list["cards"].each do |card|
        if !card["closed"]
            card["name"]
        end
    end
end
binding.pry
#       
# end

#Posting to the API - also read the doc first
# post = RestClient.post("https://api.trello.com/1/cards?idList=#{ENV["TDO_ID"]}&key=#{ENV["TRL_KEY"]}&token=#{ENV["TRL_TOKEN"]}", {name: "NEW CARD CREATED"})

binding.pry







class List < ApplicationRecord
    has_many :cards, dependent: :destroy

    def self.get_list 
        url =  "https://api.trello.com/1/boards/#{ENV["BOARD_ID"]}/lists?cards=all&fields=name&key=#{ENV["TRL_KEY"]}&token=#{ENV["TRL_TOKEN"]}"

        response = RestClient.get(url)
        list_data = JSON.parse(response)
    end 
end

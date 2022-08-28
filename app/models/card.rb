class Card < ApplicationRecord
  belongs_to :list

  def self.post_card(card)
    url = "https://api.trello.com/1/cards?idList=#{ENV["TDO_ID"]}&key=#{ENV["TRL_KEY"]}&token=#{ENV["TRL_TOKEN"]}"
    payload = card.to_json
    header = { content_type: :json, accept: :json }

    RestClient.post(url, payload, header) 
  end
end


  

  
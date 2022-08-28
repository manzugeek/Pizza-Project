class Card < ApplicationRecord
  belongs_to :list

  def self.post_card(card0)
    if RestClient.post("https://api.trello.com/1/cards?idList=#{ENV["TDO_ID"]}&key=#{ENV["TRL_KEY"]}&token=#{ENV["TRL_TOKEN"]}", 
      card.to_json, 
     { content_type: :json, accept: :json }
       )
  end
end


  

  
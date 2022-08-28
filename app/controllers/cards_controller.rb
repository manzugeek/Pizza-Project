class CardsController < ApplicationController
    def index;end

    def new
        @card = Card.new
    end

    # Create a card to Trello
    def create 
        @card = Card.new(post_params)
        #Card.post_card
        if RestClient.post("https://api.trello.com/1/cards?idList=#{ENV["TDO_ID"]}&key=#{ENV["TRL_KEY"]}&token=#{ENV["TRL_TOKEN"]}", 
            @card.to_json, 
           { content_type: :json, accept: :json }
             )
        
        redirect_to lists_path, notice: "New card successfully created!"
        else
            render :new
        end
    end

    private

    def post_params
          params.require(:card).permit(:name)
    end  
end

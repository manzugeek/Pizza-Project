class CardsController < ApplicationController
    def index;end

    def new
        @card = Card.new
    end

    # Create a card to Trello
    def create 
        card = Card.new(post_params)
        if Card.post_card(card)
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

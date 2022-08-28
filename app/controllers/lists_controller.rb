class ListsController < ApplicationController
    def index
        @listing = List.get_list
    end
    
end

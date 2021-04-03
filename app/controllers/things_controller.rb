class ThingsController < ApplicationController
    def index 
        @things = Thing.all
        render json: @things
    end

    def create
        # binding.pry
        new_words = params["_json"]
        @thing = Thing.create(words: new_words)
        render json: @thing
    end
end
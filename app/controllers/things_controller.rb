class ThingsController < ApplicationController
    def index 
        @things = Thing.all{ |thing| thing.words }
        render json: @things
    end
end
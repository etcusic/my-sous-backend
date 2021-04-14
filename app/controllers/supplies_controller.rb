class SuppliesController < ApplicationController

    def create
        @supply = Supply.create(supply_params)
        render json: @supply
    end

    def update
        binding.pry
    end

    private

    def supply_params
        params.require(:supply).permit(:user_id, :name, :category, :sub_category, :unit)
    end

end

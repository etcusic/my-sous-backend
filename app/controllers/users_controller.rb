class UsersController < ApplicationController

    def show
        binding.pry
        # @user = user_params[:id]
        # render json: @user.initialization_info
    end

    private

    def user_params
        # params
    end

end

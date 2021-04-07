class UsersController < ApplicationController

    def show
        # binding.pry
        @user = User.find_by_id(user_params[:id])
        render json: @user.initialization_info
    end

    private

    def user_params
        params.permit(:id)
    end

end

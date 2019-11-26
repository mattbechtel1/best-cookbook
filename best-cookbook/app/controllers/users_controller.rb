class UsersController < ApplicationController
    before_action :get_user, only: [:show, :destroy]

    def destroy
        @user.destroy
        redirect_to recipes_path
    end

    private

    def get_user
        @user = User.find(params[:id])
    end

    def user_params(*args)
        params.require(:user).permit(*args)
    end
end

class UsersController < ApplicationController
    before_action :get_user, only: [:show, :destroy]

    def destroy
        @user.destroy
        @user.allergens.destroy_all
        redirect_to recipes_path
    end

    def new
        @user = User.new()
    end

    def create
        @user = User.new(user_params)

        if @user.valid?
            @user.save
            redirect_to user_path(@user)
        else
            render :new
        end
    end

    private

    def get_user
        @user = User.find(params[:id])
    end

    def user_params
        params.require(:user).permit(:name, ingredient_ids: [])
    end
end

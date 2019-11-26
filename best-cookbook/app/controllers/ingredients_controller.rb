class IngredientsController < ApplicationController
    before_action :get_ingredient, only: :show

    def index
        @ingredients = Ingredient.all
    end

    private

    def get_ingredient
        @ingredient = Ingredient.find(params[:id])
    end
end

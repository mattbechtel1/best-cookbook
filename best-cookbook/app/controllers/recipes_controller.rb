class RecipesController < ApplicationController
    before_action :get_recipe, only: :show

    def index
        @recipes = Recipe.all
    end

    def new
        @recipe = Recipe.new
    end

    def create
        @recipe = Recipe.new(recipe_params(:name, :content))

        # if @recipe.valid?
            @recipe.title_case
            @recipe.save
            redirect_to recipe_path(@recipe)
        # else
        #     render :new
        # end
    end

    private

    def get_recipe
        @recipe = Recipe.find(params[:id])
    end

    def titlecase_name(params)
        params.recipe.name.titlecase
    end

    def recipe_params(*args)
        params.require(:recipe).permit(*args)
    end
end
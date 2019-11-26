class RecipesController < ApplicationController
    before_action :get_recipe, only: :show

    def index
        @recipes = Recipe.all
    end

    def index_sorted
        @recipes = Recipe.all
    end

    def new
        @recipe = Recipe.new
        # @recipe.ingredients.build
        # @recipe.ingredients.build
    end

    def create
        # new_ingredient_hash = params[:recipe][:ingredients_attributes]

        @recipe = Recipe.new(recipe_params)
        
        if @recipe.valid?
            # new_ingredient_hash.each do |index, subhash|
            #     Ingredient.create(subhash)
            # end
            # byebug
            @recipe.title_case
            @recipe.save
            redirect_to recipe_path(@recipe)
        else
            render :new
        end
    end

    private

    def get_recipe
        @recipe = Recipe.find(params[:id])
    end

    def titlecase_name(params)
        params.recipe.name.titlecase
    end

    def recipe_params
        params.require(:recipe).permit(:name, :content, :user_id, ingredient_ids: []
        # , 
            # ingredients_attributes: [:name] 
            )
    end
end
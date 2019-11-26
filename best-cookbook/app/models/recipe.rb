class Recipe < ApplicationRecord
    belongs_to :user
    has_many :ingredients_recipes
    has_many :ingredients, through: :ingredients_recipes
    has_many :allergens, through: :ingredients

    def title_case
        self.name = self.name.titlecase
    end

    def self.recipe_ingredient_count
        IngredientsRecipe.all.group(:recipe_id).count.sort_by { |k, v| -v }.to_h
    end
end
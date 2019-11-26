class Ingredient < ApplicationRecord
    has_many :ingredients_recipes
    has_many :recipes, through: :ingredients_recipes
    has_many :allergens

    def self.user_allergen_sort
        Allergen.all.group(:ingredient_id).count.sort_by { |k, v| -v }.to_h
    end

    #we have our ingredient keys and their frequency if > 0
    



end

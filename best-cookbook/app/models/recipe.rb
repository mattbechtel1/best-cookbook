class Recipe < ApplicationRecord
    belongs_to :user
    has_many :recipe_ingredients
    has_many :ingredients, through: :recipe_ingredients
    has_many :allergens, through: :ingredients

    def title_case
        self.name = self.name.titlecase
    end
end

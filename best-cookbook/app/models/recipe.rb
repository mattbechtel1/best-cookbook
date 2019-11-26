class Recipe < ApplicationRecord
    belongs_to :user
    has_many :ingredients_recipes
    has_many :ingredients, through: :ingredients_recipes
    has_many :allergens, through: :ingredients
    validates :name, :content, presence: true
    validates :content, length: {in: 50..4000}
    validates :name, length: {minimum: 3}
    validates :ingredient_ids, length: {minimum: 1, message: 'Recipe must include at least one ingredient'}
    validates :name, uniqueness: true
    accepts_nested_attributes_for :ingredients

    def validation_messages
        error_messages = []
        if self.errors.messages.any?
            self.errors.full_messages.each do |message|
                error_messages <<  message
            end
        end
        error_messages
    end

    def title_case
        self.name = self.name.titlecase
    end

    def ingredient_ids=(ids)
        ids.each do |id|
            ingredient = Ingredient.find(id)
            self.ingredients << ingredient
        end
    end

    def self.recipe_ingredient_count
        IngredientsRecipe.all.group(:recipe_id).count.sort_by { |k, v| -v }.to_h
    end
end
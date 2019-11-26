class Ingredient < ApplicationRecord
    has_many :ingredients_recipes
    has_many :recipes, through: :ingredients_recipes
    has_many :allergens
    validates :name, presence: true
    validates :name, length: {minimum: 2}

    def self.user_allergen_sort
        Allergen.all.group(:ingredient_id).count.sort_by { |k, v| -v }.to_h
    end

    # def self.create(parameters)
    #     temp_ing = Ingredient.new(parameters)
    #         if temp_ing.valid?
    #             temp_ing.save
    #         end
    # end

    #we have our ingredient keys and their frequency if > 0
    



end

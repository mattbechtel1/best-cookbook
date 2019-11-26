class User < ApplicationRecord
    has_many :recipes
    has_many :allergens
    has_many :ingredients, through: :allergens
    validates :name, presence: true
    validates :name, length: {in: 3..25}

    def validation_messages
        error_messages = []
        if self.errors.messages.any?
            self.errors.full_messages.each do |message|
                error_messages <<  message
            end
        end
        error_messages
    end
end

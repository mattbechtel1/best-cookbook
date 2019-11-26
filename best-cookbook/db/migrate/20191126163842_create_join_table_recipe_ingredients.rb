class CreateJoinTableRecipeIngredients < ActiveRecord::Migration[6.0]
  def change
    create_join_table :recipes, :ingredients do |t|
    end
  end
end

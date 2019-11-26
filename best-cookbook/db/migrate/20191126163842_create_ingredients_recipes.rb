class CreateIngredientsRecipes < ActiveRecord::Migration[6.0]
  def change
    create_join_table :recipes, :ingredients do |t|
    
    t.timestamps
    end
  end
end

class CreateAllergens < ActiveRecord::Migration[6.0]
  def change
    create_table :allergens do |t|
      t.references :user, null: false, foreign_key: true
      t.references :ingredient, null: false, foreign_key: true
      t.string :severity

      t.timestamps
    end
  end
end

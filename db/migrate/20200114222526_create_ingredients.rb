class CreateIngredients < ActiveRecord::Migration[6.0]
  def change
    create_table :ingredients do |t|
      t.string :name
      t.integer :recipe_id
      t.datetime :created_at
      t.datetime :updated_at

      t.timestamps
    end
  end
end

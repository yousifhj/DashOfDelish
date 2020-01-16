class CreateRecipes < ActiveRecord::Migration[6.0]
  def change
    create_table :recipes do |t|
      t.string :title
      t.text :description
      t.text :directions
      t.text :ingredients

      t.integer :user_id
      t.integer :category_id

      t.timestamps
    end
  end
end

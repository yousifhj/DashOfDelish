class CreateDashOfDelishCookbooks < ActiveRecord::Migration[6.0]
  def change
    create_table :dash_of_delish_cookbooks do |t|
      t.string :recipe
      t.belongs_to :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end

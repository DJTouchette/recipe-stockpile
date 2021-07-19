class CreateItems < ActiveRecord::Migration[6.1]
  def change
    create_table :recipe_items do |t|
      t.references :recipe, foreign_key: true
      t.decimal :amount
      t.string :measure

      t.timestamps
    end
  end
end

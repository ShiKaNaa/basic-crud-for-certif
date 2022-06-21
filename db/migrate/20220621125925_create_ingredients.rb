class CreateIngredients < ActiveRecord::Migration[6.1]
  def change
    create_table :ingredients do |t|
      t.string :nom
      t.integer :quantite
      t.references :liste, null: false, foreign_key: true

      t.timestamps
    end
  end
end

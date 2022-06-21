class CreateListes < ActiveRecord::Migration[6.1]
  def change
    create_table :listes do |t|
      t.string :nom

      t.timestamps
    end
  end
end

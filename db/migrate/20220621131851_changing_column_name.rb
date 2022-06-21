class ChangingColumnName < ActiveRecord::Migration[6.1]
  def change
    rename_column :ingredients, :type, :unite
  end
end

class DropDaysToExp2 < ActiveRecord::Migration[5.0]
  def change
    remove_column :items, :days_to_exp
  end
end

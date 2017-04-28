class AddComputedDaysToExp < ActiveRecord::Migration[5.0]
  def change
    add_column :items, :days_to_exp, :integer
  end
end

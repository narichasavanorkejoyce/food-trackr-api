class CreateItems < ActiveRecord::Migration[5.0]
  def change
    create_table :items do |t|
      t.string :food_name
      t.date :purchase_date
      t.date :exp_date
      t.string :store_name
      t.boolean :quantity
      t.boolean :purchased

      t.timestamps
    end
  end
end

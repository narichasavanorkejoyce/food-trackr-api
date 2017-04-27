class CreateItems < ActiveRecord::Migration[5.0]
  def change
    create_table :items do |t|
      t.string :food_name, null: false
      t.date :purchase_date, null: false
      t.date :exp_date, null: false
      t.string :store_name, null: false
      t.boolean :quantity
      t.boolean :purchased

      t.timestamps
    end
  end
end

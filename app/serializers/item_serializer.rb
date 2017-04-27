class ItemSerializer < ActiveModel::Serializer
  attributes :id, :food_name, :purchase_date, :exp_date, :store_name, :quantity, :purchased
end

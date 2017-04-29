# frozen_string_literal: true

class ItemSerializer < ActiveModel::Serializer
  attributes :id, :food_name, :purchase_date, :exp_date, :store_name, :quantity,
             :purchased

  # def days_to_exp
  #   today = Time.now.utc.to_date
  #   # exp_dte = exp_date
  #   self.exp_date - today
  # end
end

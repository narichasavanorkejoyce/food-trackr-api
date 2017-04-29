# frozen_string_literal: true

class ItemSerializer < ActiveModel::Serializer
  attributes :id, :food_name, :purchase_date, :exp_date, :store_name, :quantity,
             :purchased, :days_to_exp

  def days_to_exp
    today = Time.now.utc.to_date
    # exp_dte = exp_date
    # (exp_dte - today).to_i
    (object.exp_date - today).to_i
  end
end

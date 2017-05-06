class Item < ApplicationRecord
  belongs_to :user

  validates :food_name, presence: true
  validates :purchase_date, presence: true
  validates :exp_date, presence: true
  validates :store_name, presence: true
  # validates :quantity, presence: true
  validates :quantity, inclusion: { in: [true, false] }
  # validates :purchased, presence: true
end

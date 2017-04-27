# frozen_string_literal: true
class User < ApplicationRecord
  include Authentication
  # has_many :examples
  has_many :items

  validates :food_name, presence: true
  validates :purchase_date, presence: true
  validates :exp_date, presence: true
  validates :store_name, presence: true
end

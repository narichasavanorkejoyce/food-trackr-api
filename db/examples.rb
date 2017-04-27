# frozen_string_literal: true
# This file should contain all the record creation needed to experiment with
# your app during development.
#
# The data can then be loaded with the rake db:examples (or created alongside
# the db with db:nuke_pave).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

# %w(antony jeff matt jason).each do |name|
#   email = "#{name}@#{name}.com"
#   next if User.exists? email: email
#   User.create!(email: email,
#                password: 'abc123',
#                password_confirmation: nil)
# end

# item_food_names = %w(eggs onions blueberries bananas chicken kale almonds)
# item_purchase_dates = %w(2017-04-27 2017-04-28 2017-04-29 2017-05-01 2017-05-02 2017-05-03 2017-05-04)
# item_exp_dates = %w(2017-04-28 2017-04-29 2017-04-30 2017-05-02 2017-05-07 2017-05-10 2017-05-21)
# item_store_names = %w(TJ WF TF WF TF WF TF)
# item_quantities = %w(true true true true true true true)
# item_ind_purchase = %w(true true true true true true true)
#
# items = item_food_names.product(item_purchase_dates).product(item_exp_dates).product(item_store_names).product(item_quantities).product(item_ind_purchase)
#
# items.each do |item|
#   food_name = item[0]
#   purchase_date = item[1]
#   exp_date = item[2]
#   store_name = item[3]
#   quantity = item[4]
#   purchased = item[5]
#   next if Item.exists? food_name: food_name, purchase_date: purchase_date, exp_date: exp_date, store_name: store_name, quantity: quantity, purchased: purchased
#   Item.create!(food_name: food_name, purchase_date: purchase_date, exp_date: exp_date, store_name: store_name, quantity: quantity, purchased: purchased)
# end


Item.create([{ food_name: 'apples', purchase_date: '2017-04-27', exp_date: '2017-05-01', store_name: 'Trader Joes', quantity: true, purchased: true}])

Item.create([{ food_name: 'bananas', purchase_date: '2017-04-28', exp_date: '2017-05-01', store_name: 'Whole Foods', quantity: true, purchased: true}])

Item.create([{ food_name: 'almonds', purchase_date: '2017-04-29', exp_date: '2017-05-20', store_name: 'Trader Joes', quantity: true, purchased: true}])

Item.create([{ food_name: 'blueberries', purchase_date: '2017-04-29', exp_date: '2017-05-02', store_name: 'Trader Joes', quantity: true, purchased: true}])

Item.create([{ food_name: 'chicken', purchase_date: '2017-05-01', exp_date: '2017-05-12', store_name: 'Whole Foods', quantity: true, purchased: true}])

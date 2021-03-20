# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Admin.create!(
    email: "admin@admin",
    password: "111111"
  )

11.times do |n|
    Customer.create!(
     email: "customer#{n + 1}@customer",
     first_name: "名前#{n + 1}",
     last_name: "性#{n + 1}",
     kana_first_name: "メイ#{n + 1}",
     kana_last_name: "セイ#{n + 1}",
     password: "111111",
     postcode: "1234567",
     address: "山口県下関1-1-#{n + 1}",
     phone_number: "09011112222",
    )
end

 3.times do |n|
    Address.create!(
     customer_id: n + 1,
     name: "テスト名前#{n + 1}",
     postal_code: "1234567",
     address: "東京路渋谷区1-1-#{n + 1}",
    )
 end


 11.times do |n|
  Order.create!(
      customer_id: n + 1,
      send_name: "太郎#{n + 1}",
      postal_code: "1234567",
      address: "広島県八千代1−1−1",
      payment_method: 0,
      shipping_cost: "",
      total_price: "#{n * 800 + 800}",
      status: 0,
    )
 end

 10.times do |n|
  Genre.create!(
      name: "ケーキ#{n + 1}",
     )
 end


 10.times do |n|
  Item.create!(
      name: "チョコケーキ#{n + 1}",
      genre_id: n + 1,
      introduction: "チョコケーキ最高チョコケーキ最高チョコケーキ最高チョコケーキ最高チョコケーキ最高チョコケーキ最高",
      price: 10 + n * 100,
      # image: open("./app/assets/images/cake-2001781_1280.jpg")
    )
 end

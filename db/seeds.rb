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

Genre.create!(
  name: "ケーキ",
)


Genre.create!(
  name: "プリン",
)


Genre.create!(
  name: "焼き菓子",
)


Genre.create!(
  name: "キャンディ",
)


Item.create!(
      name: "ストロベリーケーキ",
      genre_id:  1,
      introduction: "長野県産のイチゴをふんだんに使用しました！",
      price: 432,
      image: open("./app/assets/images/berries-cake.jpg")
    )

  Item.create!(
      name: "ホールフルーツケーキ",
      genre_id: 1,
      introduction: "イタリア産のフルーツを輸入しました！",
      price: 200,
      image: open("./app/assets/images/cake.jpg")
    )


  Item.create!(
      name: "カラメルプリン",
      genre_id: 2,
      introduction: "長野県で取れた卵を使用しました！",
      price: 330,
      image: open("./app/assets/images/pudding1.jpg")
    )

  Item.create!(
      name: "アップルパイ",
      genre_id: 3,
      introduction: "長野県さんの新鮮なりんごを濃縮しました！",
      price: 210,
      image: open("./app/assets/images/applepie.jpg")
    )
    
  Item.create!(
      name: "お星様クッキー",
      genre_id: 3,
      introduction: "オンライン限定！まるでお星様のようなクッキー！",
      price: 200,
      image: open("./app/assets/images/cookie.jpeg")
    )
    
  Item.create!(
      name: "ぺろぺろキャンディ",
      genre_id: 4,
      introduction: "子供も喜ぶ甘いキャンディ",
      price: 200,
      image: open("./app/assets/images/candy2.jpg")
    )




  # 11.times do |n|
  # Order.create!(
  #     customer_id: n + 1,
  #     send_name: "太郎#{n + 1}",
  #     postal_code: "1234567",
  #     address: "広島県八千代1−1−1",
  #     payment_method: 0,
  #     shipping_cost: 800,
  #     total_price: "#{(n + 1) * 800}",
  #     status: 0,
  #   )
  # end

#   10.times do |n|
#     Genre.create!(
#         name: "ケーキ#{n + 1}",
#       )
#   end


#   10.times do |n|
#     Item.create!(
#         name: "チョコケーキ#{n + 1}",
#         genre_id: n + 1,
#         introduction: "チョコケーキ最高チョコケーキ最高チョコケーキ最高チョコケーキ最高チョコケーキ最高チョコケーキ最高",
#         price: (n + 1) * 100,
#         image: open("./app/assets/images/cake-2001781_1280.jpg")
#       )
#   end


 # 3.times do |n|
 #    OrderDetail.create!(
 #     item_id: n + 1,
 #     order_id: n + 1,
 #     price: (n + 1) * 100,
 #     quantity: n + 1,
 #     production_status: 0,
 #    )
 # end

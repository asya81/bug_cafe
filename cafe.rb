# frozen_string_literal: true

DRINKS = [
  { name: 'コーヒー', price: '300' },
  { name: 'カフェラテ', price: '400' },
  { name: 'チャイ', price: '460' },
  { name: 'エスプレッソ', price: '340' },
  { name: '緑茶', price: '450' }
].freeze

FOODS = [
  { name: 'チーズケーキ', price: '470' },
  { name: 'アップルパイ', price: '520' },
  { name: 'ホットサンド', price: '410' }
].freeze

def take_order(menus)
  menus.each.with_index(1) do |menu, i|
    puts "(#{i})#{menu[:name]}: #{menu[:price]}円"
  end
  print '>'
  ordered_menu = menus[gets.to_i - 1]
  puts "#{ordered_menu[:name]}(#{ordered_menu[:price]}円)ですね。"
  ordered_menu
end

puts 'bugカフェへようこそ！ご注文は？ 番号でどうぞ'
order1 = take_order(DRINKS)

puts 'フードメニューはいかがですか?'
order2 = take_order(FOODS)

total = order1[:price].to_i + order2[:price].to_i
puts "お会計は#{total}円になります。ありがとうございました！"

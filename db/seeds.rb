# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# coding: utf-8

User.create(:clubname => 'ユーザー１',:clubtype => '2', :email => '1@gmail.com', :password => 111111)
User.create(:clubname => 'ユーザー2',:clubtype => '3', :email => '2@gmail.com', :password => 222222)
User.create(:clubname => 'ユーザー3',:clubtype => '1', :email => '3@gmail.com', :password => 333333)
User.create(:clubname => 'ユーザー4',:clubtype => '4' ,:email => '4@gmail.com', :password => 444444)

Customer.create(:name => 'Customer1',:email => '1@gmail.com',:password => '111111')
Customer.create(:name => 'Customer2',:email => '2@gmail.com',:password => '222222')
Customer.create(:name => 'Customer3',:email => '3@gmail.com',:password => '333333')

Event.create(:eventname =>'新入生歓迎会', :when => '10/4 15:00',:where => '本山駅１番出口',:user_id => '1',:text => '楽しみましょう')
Event.create(:eventname =>'履修登録説明会', :when => '12/24 18:00',:where => '全学部棟　C33教室',:user_id => '1',:text => '履修についてわかりやすく説明します')
Event.create(:eventname =>'学部ごとの説明会', :when => '10/14 9:00',:where => 'サイゼリア本山店',:user_id => '2',:text => 'みんなで親睦を深めましょう！！')
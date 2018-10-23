# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# coding: utf-8

User.create(:clubname => 'ユーザー１',:clubtype => '2', :email => '1@gmail.com', :password => 111111 )
User.create(:clubname => 'ユーザー2',:clubtype => '3', :email => '2@gmail.com', :password => 222222)
User.create(:clubname => 'ユーザー3',:clubtype => '1', :email => '3@gmail.com', :password => 333333)
User.create(:clubname => 'ユーザー4',:clubtype => '4' ,:email => '4@gmail.com', :password => 444444)

Customer.create(:name => 'Customer1',:email => '1@gmail.com',:password => '111111')
Customer.create(:name => 'Customer2',:email => '2@gmail.com',:password => '222222')
Customer.create(:name => 'Customer3',:email => '3@gmail.com',:password => '333333')
# ユーザー１の投稿
Event.create(:eventname =>'Event_id = 1   by_user 1   1/4', :when => '10/4 15:00',:where => '本山駅１番出口',:user_id => '1',:text => '楽しみましょう')
Event.create(:eventname =>'Event_id = 2  by_user 1    2/4', :when => '12/24 18:00',:where => '全学部棟　C33教室',:user_id => '1',:text => '履修についてわかりやすく説明します')
Event.create(:eventname =>'Event_id = 3  by_user 1    3/4', :when => '10/4 13:00',:where => '本山駅',:user_id => '1',:text => '楽しみましょう')
Event.create(:eventname =>'Event_id = 4  by_user 1    4/4', :when => '10/4 4:00',:where => '１番出口',:user_id => '1',:text => '楽しみましょう')
# ユーザー２の投稿
Event.create(:eventname =>'Event_id = 5  user_by 2    1/3', :when => '10/14 9:00',:where => 'サイゼリア本山店',:user_id => '2',:text => 'みんなで親睦を深めましょう！！')
Event.create(:eventname =>'Event_id = 6  user_by_2    2/3', :when => DateTime.now+3.days,:where => '本山',:user_id => '2',:text => 'みんなで親睦を深めましょう！！')
Event.create(:eventname =>'Event_id = 7 user_by_2     3/3', :when => DateTime.now+1.days,:where => '本山',:user_id => '2',:text => 'みんなで親睦を深めましょう！！')
# ユーザー３の投稿
Event.create(:eventname =>'Event_id = 8 user_by_3    1/3', :when => DateTime.now+4.days,:where => '本山',:user_id => '3',:text => 'みんなで親睦を深めましょう！！')
Event.create(:eventname =>'Event_id = 9 user_by_3   2/3', :when => DateTime.now+2.days,:where => '本山',:user_id => '3',:text => 'みんなで親睦を深めましょう！！')
Event.create(:eventname =>'Event_id = 10 user_by_3  3/3', :when => DateTime.now+2.days,:where => '本山',:user_id => '3',:text => 'みんなで親睦を深めましょう！！')

Clip.create(:event_id => '3', :customer_id => '1')
Clip.create(:event_id => '3', :customer_id => '2')
Clip.create(:event_id => '2', :customer_id => '1')

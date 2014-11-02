# encoding: utf-8

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

# Test data for parent table posts & child table comments
# See http://stackoverflow.com/questions/16328903/what-is-the-proper-syntax-for-seeding-a-child-table
Comment.delete_all
Post.delete_all

# Post 1 & its comments
post1 = Post.create!(:title => "My 1st Post", :text => "The title has to be at least 5-character long.")
comment1_for_post1 = Comment.create!(post_id: post1.id, commenter: "Tom", body: "Hi, I'm Tom Boy.")
comment2_for_post1 = Comment.create!(post_id: post1.id, commenter: "John", body: "Comments belong to their corresponding posts.")

# Post 2 & its comments
post2 = Post.create!(:title => "Thank you, Rails developers", :text => "I'm president Obama, thank you so much Rails guys.")
comment1_for_post2 = Comment.create!(post_id: post2.id, commenter: "Micheal Williams", body: "Ruby is lovely.")
comment2_for_post2 = Comment.create!(post_id: post2.id, commenter: "Katie Bret", body: "I love Bret who is my husband.")

# Post 3 & its comments
post3 = Post.create!(:title => "Mike's Post", :text => "Hello, Rails! You're REALLY awesome.")
comment1_for_post3 = Comment.create!(post_id: post3.id, commenter: "Andy Williams", body: "Moonriver, wide than a mile.")
comment2_for_post3 = Comment.create!(post_id: post3.id, commenter: "simon and garfunkel", body: "Are you going to the Scarborough Fair")



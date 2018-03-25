# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
3.times do |topic|
  Topic.create!(
    title: "Topic #{topic}"
  )
end

puts "3 Topics created"
10.times do |blog|
  Blog.create!(
    title: "Blog Post #{blog}",
    body: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do",
    topic_id: Topic.last.id
  )
end

puts "10 Blog posts created"

5.times do |skill|
  Skill.create!(
    title: "Rails #{skill}",
    percent_utilized: 15
  )
end

puts "5 skills created"


5.times do |portfolio_item|
  Portfolio.create!(
    title: "Ruby on Rails",
    subtitle: "Subtitle #{portfolio_item}",
    body: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.",
    thumb_image: "http://via.placeholder.com/350x200",
    main_image: "http://via.placeholder.com/600x400"
  )
end
5.times do |portfolio_item|
  Portfolio.create!(
    title: "React on Rails",
    subtitle: "Subtitle #{portfolio_item}",
    body: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.",
    thumb_image: "http://via.placeholder.com/350x200",
    main_image: "http://via.placeholder.com/600x400"
  )
end

3.times do |topic|
  Topic.create!(
    title: "Topic #{topic}"
  )
end

puts "3 Topics created"

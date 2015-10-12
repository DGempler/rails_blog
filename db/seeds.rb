# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

p1 = Post.create(title: 'Brain tumor', author: 'cancer', content: 'Tsanami of snowballs')
p2 = Post.create(title: 'ASk him', author: 'Quoram', content: 'From Pakistan')

t1 = Tag.create(name: 'beautiful')
t2 = Tag.create(name: 'Texas')
t3 = Tag.create(name: 'Fax machines')

p1.tags << t1
p1.tags << t3

p2.tags << t3
p2.tags << t2
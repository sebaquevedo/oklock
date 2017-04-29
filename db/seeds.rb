# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.destroy_all
Study.destroy_all

a = User.create(email:'seb@seb.cl',password: '123456',name:'seba')

d1 = 4.year.ago
d2 = 1.month.ago


Study.create(user_id: a.id,title: 'Informatic Engineer',grade:'Profesional', initdate:d1,enddate:d2)


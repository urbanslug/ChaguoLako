# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

#Deletes all admins.
Admin.delete_all 

#Creates a  new admin with the following credentials
Admin.create! :email => ENV['ADMIN_EMAIL'], :password => ENV['ADMIN_PASSWORD'], :username => ENV['ADMIN_USERNAME'] 
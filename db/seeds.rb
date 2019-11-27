# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
# records = JSON.parse(File.read('/home/antho/Mobee/Mobee Travel/Definitive version/api/users.json'))
# records.each do |record|
#   User.create!(record)
# end

# records = JSON.parse(File.read('/home/antho/Mobee/Mobee Travel/Definitive version/api/users.json'))
# records.each do |record|
#   User.create!(record)
# end

require 'json'
require 'open-uri'

#records = JSON.parse(File.read(Rails.root.to_s+'/users4.json'))
#records.each do |record|
#  User.create!(record.reject! {|k| k == "id" })
#end
url = "https://mobeetravelapp.herokuapp.com/test.json"
records = JSON.parse(open(url).read)
records.each do |record|
  Establishment.create!((record.reject! {|k| k == "id" }).merge(user_id: 1))
end

# records = JSON.parse(File.read(Rails.root.to_s+'/photos.json'))
# records.each do |record|
#   Establishment.create!(record.reject! {|k| k == "id" })
# end


# url = "/home/antho/Mobee/Mobee Travel/Definitive version/api/establishments.json"

# establishments = JSON.parse(open(url).read)

# establishments.each do |establishment|
#   Establishment.create![id: establishment["id"], home_type: establishment["home_type"], user_id: establishment["user_id"]]((record.reject! {|k| k == "id" }).merge(user_id: 1))
# end

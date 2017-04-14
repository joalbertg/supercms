# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
user = CreateAdminService.new.call
puts 'CREATED ADMIN USER: ' << user.email
# Environment variables (ENV['...']) can be set in the file .env file.

Seccion.all.each do |seccion|
  100.times do |i|
    seccion.paginas << Pagina.create(
      nombre: "#{Faker::Name.unique.name} - #{i}",
      active: true,
      texto: Faker::Lorem.paragraphs)
  end
end

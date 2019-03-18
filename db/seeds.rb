User.destroy_all 
Driver.destroy_all
Request.destroy_all
users = User.all

30.times do
  User.create(
    name: Faker::Internet.username,
    last_name: Faker::Name.name,
    address: Faker::Address.street_name,
    phone: Faker::PhoneNumber.phone_number,
    email: Faker::Internet.email,
    password: 123456
  )
end

50.times do
  Driver.create(
    name: Faker::Internet.username,
    last_name: Faker::Name.name,
    address: Faker::Address.street_name,
    phone: Faker::PhoneNumber.phone_number,
    email: Faker::Internet.email,
    password: 123456
  )
end

Request.create(
  user: users.sample,
  starting_point: 'carmen 1153',
  end_point: 'carlos walker martinez 6100',
  order_description: 'Tamaño, descripcion, peso',
  created_at: Faker::Number.number(1).to_i.day.ago
  )

Request.create(
  user: users.sample,
  starting_point: 'carmen 1153',
  end_point: 'San isidro 951',
  order_description: 'Tamaño, descripcion, peso,',
  created_at: Faker::Number.number(1).to_i.day.ago
  )

Request.create(
  user: users.sample,
  starting_point: 'cuarta avenida 1345',
  end_point: 'miguel claro 1074',
  order_description: 'Tamaño, descripcion, peso',
  created_at: Faker::Number.number(1).to_i.day.ago
  )

Request.create(
  user: users.sample,
  starting_point: 'miguel claro 1074',
  end_point: 'costanera center',
  order_description: 'Tamaño, descripcion, peso',
  created_at: Faker::Number.number(1).to_i.day.ago
  )

Request.create(
  user: users.sample,
  starting_point: 'carlos walker martinez 6100',
  end_point: 'las condes',
  order_description: 'Tamaño, descripcion, peso',
  created_at: Faker::Number.number(1).to_i.day.ago
  )
  
AdminUser.create!(email: 'admin@example.com', password: 'password', password_confirmation: 'password') if AdminUser.where(email: 'admin@example.com').blank?
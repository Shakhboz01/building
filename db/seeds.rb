# User.create(name: 'admin', email: 'admin@gmail.com', password: 111111, role: 1)
# # Block.create(name: 'Blok A')
# # Block.create(name: 'Blok B')
# # Block.create(name: 'Blok C')
# number_of_floors = 4
# number_of_apartments = 3
# Block.all.order(id: :asc).each do |block|
#   number_of_floors.times do |floor_number|
#     floor = Floor.create(number: floor_number + 1, block_id: block.id)
#     next if floor_number >= number_of_apartments

#     ApartmentNumber.create(block_id: block.id, number: floor_number + 1, square: rand(40..125), number_of_rooms: rand(2..6))
#   end
# end


# first block
# ApartmentNumber.find(1).update(square: 60.2)
# RoomSquare.create(apartment_number_id: 1, name: 'Mehmonxona', square: 18.2)
# RoomSquare.create(apartment_number_id: 1, name: 'Yotoqxona', square: 12.1)
# RoomSquare.create(apartment_number_id: 1, name: 'S/U', square: 4.3)
# RoomSquare.create(apartment_number_id: 1, name: 'Kirish zali', square: 9.7)
# RoomSquare.create(apartment_number_id: 1, name: 'Oshxona', square: 13.8)
# RoomSquare.create(apartment_number_id: 1, name: 'Balkon', square: 2.1)

# ApartmentNumber.find(2).update(square: 66.5)
# RoomSquare.create(apartment_number_id: 2, name: 'Mehmonxona', square: 14.2)
# RoomSquare.create(apartment_number_id: 2, name: 'Yotoqxona', square: 14.5)
# RoomSquare.create(apartment_number_id: 2, name: 'S/U', square: 4.8)
# RoomSquare.create(apartment_number_id: 2, name: 'Kirish zali', square: 16.9)
# RoomSquare.create(apartment_number_id: 2, name: 'Oshxona', square: 14.9)
# RoomSquare.create(apartment_number_id: 2, name: 'Balkon', square: 1.2)

# ApartmentNumber.find(3).update(square: 48.35)
# RoomSquare.create(apartment_number_id: 3, name: 'Mehmonxona', square: 16.8)
# RoomSquare.create(apartment_number_id: 3, name: 'S/U', square: 5.3)
# RoomSquare.create(apartment_number_id: 3, name: 'Kirish zali', square: 8.9)
# RoomSquare.create(apartment_number_id: 3, name: 'Oshxona', square: 12.1)
# RoomSquare.create(apartment_number_id: 3, name: 'Kladovka', square: 2.4)

# ApartmentNumber.find(4).update(square: 75.5)
# RoomSquare.create(apartment_number_id: 4, name: 'Studiya Oshxona', square: 33)
# RoomSquare.create(apartment_number_id: 4, name: 'S/U', square: 3.7)
# RoomSquare.create(apartment_number_id: 4, name: 'Kirish zali', square: 11.2)
# RoomSquare.create(apartment_number_id: 4, name: 'Balkon', square: 1.2)
# RoomSquare.create(apartment_number_id: 4, name: 'Balkon', square: 1.2)
# RoomSquare.create(apartment_number_id: 4, name: 'Yotoqxona', square: 10.5)
# RoomSquare.create(apartment_number_id: 4, name: 'Yotoqxona', square: 14.7)

# ApartmentNumber.find(5).update(square: 62.8)
# RoomSquare.create(apartment_number_id: 5, name: 'Mehmonxona', square: 18.9)
# RoomSquare.create(apartment_number_id: 5, name: 'S/U', square: 3.6)
# RoomSquare.create(apartment_number_id: 5, name: 'Kirish zali', square: 10.8)
# RoomSquare.create(apartment_number_id: 5, name: 'Oshxona', square: 9.9)
# RoomSquare.create(apartment_number_id: 5, name: 'Yotoqxona', square: 16.6)
# RoomSquare.create(apartment_number_id: 5, name: 'Balkon', square: 3)

# ApartmentNumber.find(6).update(square: 79.9)
# RoomSquare.create(apartment_number_id: 6, name: 'Mehmonxona', square: 17.7)
# RoomSquare.create(apartment_number_id: 6, name: 'S/U', square: 2.9)
# RoomSquare.create(apartment_number_id: 6, name: 'S/U', square: 3.3)
# RoomSquare.create(apartment_number_id: 6, name: 'Kirish zali', square: 11.8)
# RoomSquare.create(apartment_number_id: 6, name: 'Oshxona', square: 13.1)
# RoomSquare.create(apartment_number_id: 6, name: 'Yotoqxona', square: 13.9)
# RoomSquare.create(apartment_number_id: 6, name: 'Yotoqxona', square: 16)
# RoomSquare.create(apartment_number_id: 6, name: 'Balkon', square: 1.2)


# # specific epartment numbers

# first_epartment = SpecificEpartmentNumber.create(block_id: 1, number: 1, number_of_rooms: 2, square: 55.7)
# RoomSquare.create(specific_epartment_number_id: first_epartment.id, name: 'Mehmonxona', square: 18.2)
# RoomSquare.create(specific_epartment_number_id: first_epartment.id, name: 'Yotoqxona', square: 12.1)
# RoomSquare.create(specific_epartment_number_id: first_epartment.id, name: 'S/U', square: 4.8)
# RoomSquare.create(specific_epartment_number_id: first_epartment.id, name: 'Kirish zali', square: 9.7)
# RoomSquare.create(specific_epartment_number_id: first_epartment.id, name: 'Oshxona', square: 10.9)

# second_epartment = SpecificEpartmentNumber.create(block_id: 1, number: 2, number_of_rooms: 2, square: 66.1)
# RoomSquare.create(specific_epartment_number_id: second_epartment.id, name: 'Mehmonxona', square: 14.2)
# RoomSquare.create(specific_epartment_number_id: second_epartment.id, name: 'Yotoqxona', square: 14.5)
# RoomSquare.create(specific_epartment_number_id: second_epartment.id, name: 'S/U', square: 5.6)
# RoomSquare.create(specific_epartment_number_id: second_epartment.id, name: 'Kirish zali', square: 16.9)
# RoomSquare.create(specific_epartment_number_id: second_epartment.id, name: 'Oshxona', square: 14.9)

# third_epartment = SpecificEpartmentNumber.create(block_id: 1, number: 3, number_of_rooms: 1, square: 52.4)
# RoomSquare.create(specific_epartment_number_id: third_epartment.id, name: 'Mehmonxona', square: 16.8)
# RoomSquare.create(specific_epartment_number_id: third_epartment.id, name: 'S/U', square: 6)
# RoomSquare.create(specific_epartment_number_id: third_epartment.id, name: 'Kirish zali', square: 8.9)
# RoomSquare.create(specific_epartment_number_id: third_epartment.id, name: 'Oshxona', square: 18.3)
# RoomSquare.create(specific_epartment_number_id: third_epartment.id, name: 'Kladovka', square: 2.4)

# fourth_epartment = SpecificEpartmentNumber.create(block_id: 1, number: 4, number_of_rooms: 3, square: 74.5)
# RoomSquare.create(specific_epartment_number_id: fourth_epartment.id, name: 'Studiya Oshxona', square: 33.7)
# RoomSquare.create(specific_epartment_number_id: fourth_epartment.id, name: 'S/U', square: 4.4)
# RoomSquare.create(specific_epartment_number_id: fourth_epartment.id, name: 'Kirish zali', square: 11.2)
# RoomSquare.create(specific_epartment_number_id: fourth_epartment.id, name: 'Yotoqxona', square: 10.5)
# RoomSquare.create(specific_epartment_number_id: fourth_epartment.id, name: 'Yotoqxona', square: 14.7)

# fifth_epartment = SpecificEpartmentNumber.create(block_id: 1, number: 5, number_of_rooms: 2, square: 66.9)
# RoomSquare.create(specific_epartment_number_id: fifth_epartment.id, name: 'Mehmonxona', square: 18.9)
# RoomSquare.create(specific_epartment_number_id: fifth_epartment.id, name: 'S/U', square: 4.4)
# RoomSquare.create(specific_epartment_number_id: fifth_epartment.id, name: 'Kirish zali', square: 10.8)
# RoomSquare.create(specific_epartment_number_id: fifth_epartment.id, name: 'Oshxona', square: 16.2)
# RoomSquare.create(specific_epartment_number_id: fifth_epartment.id, name: 'Yotoqxona', square: 16.6)

# sixth_epartment = SpecificEpartmentNumber.create(block_id: 1, number: 6, number_of_rooms: 3, square: 79.5)
# RoomSquare.create(specific_epartment_number_id: sixth_epartment.id, name: 'Mehmonxona', square: 17.7)
# RoomSquare.create(specific_epartment_number_id: sixth_epartment.id, name: 'S/U', square: 3.7)
# RoomSquare.create(specific_epartment_number_id: sixth_epartment.id, name: 'S/U', square: 3.3)
# RoomSquare.create(specific_epartment_number_id: sixth_epartment.id, name: 'Kirish zali', square: 11.8)
# RoomSquare.create(specific_epartment_number_id: sixth_epartment.id, name: 'Oshxona', square: 13.1)
# RoomSquare.create(specific_epartment_number_id: sixth_epartment.id, name: 'Yotoqxona', square: 13.9)
# RoomSquare.create(specific_epartment_number_id: sixth_epartment.id, name: 'Yotoqxona', square: 16)
# RoomSquare.create(specific_epartment_number_id: sixth_epartment.id, name: 'Balkon', square: 1.2)
# block = Block.find(1)
# apartments = block.floors.where(number: 1).take.apartments
# apartments.each do |apartment|
#   specific_epartment_number =
#     block.specific_epartment_numbers.where(number: apartment.apartment_number.number).take
#   apartment.update(specific_epartment_number: specific_epartment_number)
# end

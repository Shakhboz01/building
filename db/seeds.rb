# first block
ApartmentNumber.find(1).update(square: 60.2)
RoomSquare.create(apartment_number_id: 1, name: 'Mehmonxona', square: 18.2)
RoomSquare.create(apartment_number_id: 1, name: 'Yotoqxona', square: 12.1)
RoomSquare.create(apartment_number_id: 1, name: 'S/U', square: 4.3)
RoomSquare.create(apartment_number_id: 1, name: 'Kirish zali', square: 9.7)
RoomSquare.create(apartment_number_id: 1, name: 'Oshxona', square: 13.8)
RoomSquare.create(apartment_number_id: 1, name: 'Balkon', square: 2.1)

ApartmentNumber.find(2).update(square: 66.5)
RoomSquare.create(apartment_number_id: 2, name: 'Mehmonxona', square: 14.2)
RoomSquare.create(apartment_number_id: 2, name: 'Yotoqxona', square: 14.5)
RoomSquare.create(apartment_number_id: 2, name: 'S/U', square: 4.8)
RoomSquare.create(apartment_number_id: 2, name: 'Kirish zali', square: 16.9)
RoomSquare.create(apartment_number_id: 2, name: 'Oshxona', square: 14.9)
RoomSquare.create(apartment_number_id: 2, name: 'Balkon', square: 1.2)

ApartmentNumber.find(3).update(square: 48.35)
RoomSquare.create(apartment_number_id: 3, name: 'Mehmonxona', square: 16.8)
RoomSquare.create(apartment_number_id: 3, name: 'S/U', square: 5.3)
RoomSquare.create(apartment_number_id: 3, name: 'Kirish zali', square: 8.9)
RoomSquare.create(apartment_number_id: 3, name: 'Oshxona', square: 12.1)
RoomSquare.create(apartment_number_id: 3, name: 'Kladovka', square: 2.4)

ApartmentNumber.find(4).update(square: 75.5)
RoomSquare.create(apartment_number_id: 4, name: 'Studiya Oshxona', square: 33)
RoomSquare.create(apartment_number_id: 4, name: 'S/U', square: 3.7)
RoomSquare.create(apartment_number_id: 4, name: 'Kirish zali', square: 11.2)
RoomSquare.create(apartment_number_id: 4, name: 'Balkon', square: 1.2)
RoomSquare.create(apartment_number_id: 4, name: 'Balkon', square: 1.2)
RoomSquare.create(apartment_number_id: 4, name: 'Yotoqxona', square: 10.5)
RoomSquare.create(apartment_number_id: 4, name: 'Yotoqxona', square: 14.7)

ApartmentNumber.find(5).update(square: 62.8)
RoomSquare.create(apartment_number_id: 5, name: 'Mehmonxona', square: 18.9)
RoomSquare.create(apartment_number_id: 5, name: 'S/U', square: 3.6)
RoomSquare.create(apartment_number_id: 5, name: 'Kirish zali', square: 10.8)
RoomSquare.create(apartment_number_id: 5, name: 'Oshxona', square: 9.9)
RoomSquare.create(apartment_number_id: 5, name: 'Yotoqxona', square: 16.6)
RoomSquare.create(apartment_number_id: 5, name: 'Balkon', square: 3)

ApartmentNumber.find(6).update(square: 79.9)
RoomSquare.create(apartment_number_id: 6, name: 'Mehmonxona', square: 17.7)
RoomSquare.create(apartment_number_id: 6, name: 'S/U', square: 2.9)
RoomSquare.create(apartment_number_id: 6, name: 'S/U', square: 3.3)
RoomSquare.create(apartment_number_id: 6, name: 'Kirish zali', square: 11.8)
RoomSquare.create(apartment_number_id: 6, name: 'Oshxona', square: 13.1)
RoomSquare.create(apartment_number_id: 6, name: 'Yotoqxona', square: 13.9)
RoomSquare.create(apartment_number_id: 6, name: 'Yotoqxona', square: 16)
RoomSquare.create(apartment_number_id: 6, name: 'Balkon', square: 1.2)


# specific epartment numbers

first_epartment = SpecificEpartmentNumber.find_or_create_by(block_id: 1, number: 1, number_of_rooms: 2, square: 55.7)
RoomSquare.create(specific_epartment_number_id: 1, name: 'Mehmonxona', square: 18.2)
RoomSquare.create(specific_epartment_number_id: 1, name: 'Yotoqxona', square: 12.1)
RoomSquare.create(specific_epartment_number_id: 1, name: 'S/U', square: 4.8)
RoomSquare.create(specific_epartment_number_id: 1, name: 'Kirish zali', square: 9.7)
RoomSquare.create(specific_epartment_number_id: 1, name: 'Oshxona', square: 10.9)

second_epartment = SpecificEpartmentNumber.find_or_create_by(block_id: 1, number: 2, number_of_rooms: 2, square: 66.1)
RoomSquare.create(specific_epartment_number_id: second_epartment.id, name: 'Mehmonxona', square: 14.2)
RoomSquare.create(specific_epartment_number_id: second_epartment.id, name: 'Yotoqxona', square: 14.5)
RoomSquare.create(specific_epartment_number_id: second_epartment.id, name: 'S/U', square: 5.6)
RoomSquare.create(specific_epartment_number_id: second_epartment.id, name: 'Kirish zali', square: 16.9)
RoomSquare.create(specific_epartment_number_id: second_epartment.id, name: 'Oshxona', square: 14.9)

third_epartment = SpecificEpartmentNumber.find_or_create_by(block_id: 1, number: 3, number_of_rooms: 1, square: 52.4)
RoomSquare.create(specific_epartment_number_id: third_epartment.id, name: 'Mehmonxona', square: 16.8)
RoomSquare.create(specific_epartment_number_id: third_epartment.id, name: 'S/U', square: 6)
RoomSquare.create(specific_epartment_number_id: third_epartment.id, name: 'Kirish zali', square: 8.9)
RoomSquare.create(specific_epartment_number_id: third_epartment.id, name: 'Oshxona', square: 18.3)
RoomSquare.create(specific_epartment_number_id: third_epartment.id, name: 'Kladovka', square: 2.4)

fourth_epartment = SpecificEpartmentNumber.find_or_create_by(block_id: 1, number: 4, number_of_rooms: 3, square: 74.5)
RoomSquare.create(specific_epartment_number_id: fourth_epartment.id, name: 'Studiya Oshxona', square: 33.7)
RoomSquare.create(specific_epartment_number_id: fourth_epartment.id, name: 'S/U', square: 4.4)
RoomSquare.create(specific_epartment_number_id: fourth_epartment.id, name: 'Kirish zali', square: 11.2)
RoomSquare.create(specific_epartment_number_id: fourth_epartment.id, name: 'Yotoqxona', square: 10.5)
RoomSquare.create(specific_epartment_number_id: fourth_epartment.id, name: 'Yotoqxona', square: 14.7)

fifth_epartment = SpecificEpartmentNumber.find_or_create_by(block_id: 1, number: 5, number_of_rooms: 2, square: 66.9)
RoomSquare.create(specific_epartment_number_id: fifth_epartment.id, name: 'Mehmonxona', square: 18.9)
RoomSquare.create(specific_epartment_number_id: fifth_epartment.id, name: 'S/U', square: 4.4)
RoomSquare.create(specific_epartment_number_id: fifth_epartment.id, name: 'Kirish zali', square: 10.8)
RoomSquare.create(specific_epartment_number_id: fifth_epartment.id, name: 'Oshxona', square: 16.2)
RoomSquare.create(specific_epartment_number_id: fifth_epartment.id, name: 'Yotoqxona', square: 16.6)

sixth_epartment = SpecificEpartmentNumber.find_or_create_by(block_id: 1, number: 6, number_of_rooms: 3, square: 79.5)
RoomSquare.create(specific_epartment_number_id: sixth_epartment.id, name: 'Mehmonxona', square: 17.7)
RoomSquare.create(specific_epartment_number_id: sixth_epartment.id, name: 'S/U', square: 3.7)
RoomSquare.create(specific_epartment_number_id: sixth_epartment.id, name: 'S/U', square: 3.3)
RoomSquare.create(specific_epartment_number_id: sixth_epartment.id, name: 'Kirish zali', square: 11.8)
RoomSquare.create(specific_epartment_number_id: sixth_epartment.id, name: 'Oshxona', square: 13.1)
RoomSquare.create(specific_epartment_number_id: sixth_epartment.id, name: 'Yotoqxona', square: 13.9)
RoomSquare.create(specific_epartment_number_id: sixth_epartment.id, name: 'Yotoqxona', square: 16)
RoomSquare.create(specific_epartment_number_id: sixth_epartment.id, name: 'Balkon', square: 1.2)
block = Block.find(1)
apartments = block.floors.where(number: 1).take.apartments
apartments.each do |apartment|
  specific_epartment_number =
    block.specific_epartment_numbers.where(number: apartment.apartment_number.number).take
  apartment.update(specific_epartment_number: specific_epartment_number)
end



# Block 2
ApartmentNumber.find(8).update(square: 58.66)
RoomSquare.create(apartment_number_id: 8, name: 'Mehmonxona', square: 17.8)
RoomSquare.create(apartment_number_id: 8, name: 'Yotoqxona', square: 15.2)
RoomSquare.create(apartment_number_id: 8, name: 'S/U', square: 3.1)
RoomSquare.create(apartment_number_id: 8, name: 'S/U', square: 2.3)
RoomSquare.create(apartment_number_id: 8, name: 'Kirish zali', square: 8.5)
RoomSquare.create(apartment_number_id: 8, name: 'Oshxona', square: 10.8)
RoomSquare.create(apartment_number_id: 8, name: 'Balkon', square: 0.96)

ApartmentNumber.find(11).update(square: 85.5)
RoomSquare.create(apartment_number_id: 11, name: 'Mehmonxona', square: 17.6)
RoomSquare.create(apartment_number_id: 11, name: 'Yotoqxona', square: 18.9)
RoomSquare.create(apartment_number_id: 11, name: 'S/U', square: 2.3)
RoomSquare.create(apartment_number_id: 11, name: 'S/U', square: 3.8)
RoomSquare.create(apartment_number_id: 11, name: 'Kirish zali', square: 14.1)
RoomSquare.create(apartment_number_id: 11, name: 'Oshxona', square: 9)
RoomSquare.create(apartment_number_id: 11, name: 'Balkon', square: 1.6)
RoomSquare.create(apartment_number_id: 11, name: 'Balkon', square: 1.6)

ApartmentNumber.find(14).update(square: 53.2)
RoomSquare.create(apartment_number_id: 14, name: 'S/U', square: 4.5)
RoomSquare.create(apartment_number_id: 14, name: 'Kirish zali', square: 7.9)
RoomSquare.create(apartment_number_id: 14, name: 'Oshxona studiya', square: 17.3)
RoomSquare.create(apartment_number_id: 14, name: 'Yotoqxona', square: 20.5)
RoomSquare.create(apartment_number_id: 14, name: 'Balkon', square: 3)


ApartmentNumber.find(16).update(square: 37.1)
RoomSquare.create(apartment_number_id: 16, name: 'Oshxona Studiya', square: 8.2)
RoomSquare.create(apartment_number_id: 16, name: 'S/U', square: 4.3)
RoomSquare.create(apartment_number_id: 16, name: 'Kirish zali', square: 8.6)
RoomSquare.create(apartment_number_id: 16, name: 'Balkon', square: 1.6)
RoomSquare.create(apartment_number_id: 16, name: 'Yotoqxona', square: 14.4)

ApartmentNumber.find(20).update(square: 65.6)
RoomSquare.create(apartment_number_id: 20, name: 'Mehmonxona', square: 16.6)
RoomSquare.create(apartment_number_id: 20, name: 'S/U', square: 2.3)
RoomSquare.create(apartment_number_id: 20, name: 'S/U', square: 3.8)
RoomSquare.create(apartment_number_id: 20, name: 'Kirish zali', square: 13.4)
RoomSquare.create(apartment_number_id: 20, name: 'Oshxona', square: 9)
RoomSquare.create(apartment_number_id: 20, name: 'Yotoqxona', square: 18.9)
RoomSquare.create(apartment_number_id: 20, name: 'Balkon', square: 1.6)

ApartmentNumber.find(24).update(square: 58.76)
RoomSquare.create(apartment_number_id: 24, name: 'Mehmonxona', square: 17.8)
RoomSquare.create(apartment_number_id: 24, name: 'S/U', square: 2.3)
RoomSquare.create(apartment_number_id: 24, name: 'S/U', square: 3.1)
RoomSquare.create(apartment_number_id: 24, name: 'Kirish zali', square: 8.5)
RoomSquare.create(apartment_number_id: 24, name: 'Oshxona', square: 10.8)
RoomSquare.create(apartment_number_id: 24, name: 'Yotoqxona', square: 15.3)
RoomSquare.create(apartment_number_id: 24, name: 'Balkon', square: 0.96)


# specific epartment numbers

first_epartment = SpecificEpartmentNumber.find_or_create_by(block_id: 3, number: 1, number_of_rooms: 2, square: 51)
RoomSquare.create(specific_epartment_number_id: first_epartment.id, name: 'Mehmonxona', square: 17.8)
RoomSquare.create(specific_epartment_number_id: first_epartment.id, name: 'Yotoqxona', square: 11.6)
RoomSquare.create(specific_epartment_number_id: first_epartment.id, name: 'S/U', square: 3.1)
RoomSquare.create(specific_epartment_number_id: first_epartment.id, name: 'S/U', square: 2.9)
RoomSquare.create(specific_epartment_number_id: first_epartment.id, name: 'Kirish zali', square: 8.5)
RoomSquare.create(specific_epartment_number_id: first_epartment.id, name: 'Oshxona', square: 7.1)

second_epartment = SpecificEpartmentNumber.find_or_create_by(block_id: 3, number: 2, number_of_rooms: 3, square: 86.8)
RoomSquare.create(specific_epartment_number_id: second_epartment.id, name: 'Mehmonxona', square: 17.6)
RoomSquare.create(specific_epartment_number_id: second_epartment.id, name: 'Yotoqxona', square: 18.9)
RoomSquare.create(specific_epartment_number_id: second_epartment.id, name: 'Yotoqxona', square: 16.6)
RoomSquare.create(specific_epartment_number_id: second_epartment.id, name: 'S/U', square: 2.9)
RoomSquare.create(specific_epartment_number_id: second_epartment.id, name: 'S/U', square: 3.8)
RoomSquare.create(specific_epartment_number_id: second_epartment.id, name: 'Kirish zali', square: 14.1)
RoomSquare.create(specific_epartment_number_id: second_epartment.id, name: 'Oshxona', square: 12.9)

third_epartment = SpecificEpartmentNumber.find_or_create_by(block_id: 3, number: 3, number_of_rooms: 2, square: 53.7)
RoomSquare.create(specific_epartment_number_id: third_epartment.id, name: 'S/U', square: 5.2)
RoomSquare.create(specific_epartment_number_id: third_epartment.id, name: 'Kirish zali', square: 7.9)
RoomSquare.create(specific_epartment_number_id: third_epartment.id, name: 'Studiya Oshxona', square: 23.4)
RoomSquare.create(specific_epartment_number_id: third_epartment.id, name: 'Yotoqxona', square: 17.2)

fourth_epartment = SpecificEpartmentNumber.find_or_create_by(block_id: 3, number: 4, number_of_rooms: 1, square: 32.6)
RoomSquare.create(specific_epartment_number_id: fourth_epartment.id, name: 'Mehmonxona', square: 10.9)
RoomSquare.create(specific_epartment_number_id: fourth_epartment.id, name: 'S/U', square: 2.9)
RoomSquare.create(specific_epartment_number_id: fourth_epartment.id, name: 'Kirish zali', square: 8.6)
RoomSquare.create(specific_epartment_number_id: fourth_epartment.id, name: 'Oshxona', square: 10.2)

fifth_epartment = SpecificEpartmentNumber.find_or_create_by(block_id: 3, number: 5, number_of_rooms: 1, square: 38.5)
RoomSquare.create(specific_epartment_number_id: fifth_epartment.id, name: 'Yotoqxona', square: 15.2)
RoomSquare.create(specific_epartment_number_id: fifth_epartment.id, name: 'S/U', square: 3.1)
RoomSquare.create(specific_epartment_number_id: fifth_epartment.id, name: 'Kirish zali', square: 10.2)
RoomSquare.create(specific_epartment_number_id: fifth_epartment.id, name: 'Oshxona', square: 10)

block = Block.find(3)
apartments = block.floors.where(number: 1).take.apartments
apartments.each do |apartment|
  specific_epartment_number =
    block.specific_epartment_numbers.where(number: apartment.apartment_number.number).take
  next unless specific_epartment_number

  apartment.update(specific_epartment_number: specific_epartment_number)
end






# block 3

ApartmentNumber.find(7).update(square: 58.66)
RoomSquare.create(apartment_number_id: 7, name: 'Mehmonxona', square: 17.8)
RoomSquare.create(apartment_number_id: 7, name: 'Yotoqxona', square: 15.2)
RoomSquare.create(apartment_number_id: 7, name: 'S/U', square: 3.1)
RoomSquare.create(apartment_number_id: 7, name: 'S/U', square: 2.3)
RoomSquare.create(apartment_number_id: 7, name: 'Kirish zali', square: 8.5)
RoomSquare.create(apartment_number_id: 7, name: 'Oshxona', square: 10.8)
RoomSquare.create(apartment_number_id: 7, name: 'Balkon', square: 0.96)

ApartmentNumber.find(10).update(square: 86.56)
RoomSquare.create(apartment_number_id: 10, name: 'Mehmonxona', square: 17.6)
RoomSquare.create(apartment_number_id: 10, name: 'Yotoqxona', square: 16.6)
RoomSquare.create(apartment_number_id: 10, name: 'Yotoqxona', square: 18.9)
RoomSquare.create(apartment_number_id: 10, name: 'S/U', square: 2.3)
RoomSquare.create(apartment_number_id: 10, name: 'S/U', square: 3.8)
RoomSquare.create(apartment_number_id: 10, name: 'Kirish zali', square: 14.1)
RoomSquare.create(apartment_number_id: 10, name: 'Oshxona', square: 9.0)
RoomSquare.create(apartment_number_id: 10, name: 'Balkon', square: 1.6)
RoomSquare.create(apartment_number_id: 10, name: 'Balkon', square: 1.6)

ApartmentNumber.find(13).update(square: 53.2)
RoomSquare.create(apartment_number_id: 13, name: 'S/U', square: 4.5)
RoomSquare.create(apartment_number_id: 13, name: 'Kirish zali', square: 7.9)
RoomSquare.create(apartment_number_id: 13, name: 'Oshxona Studiya', square: 17.3)
RoomSquare.create(apartment_number_id: 13, name: 'Balkon', square: 3)
RoomSquare.create(apartment_number_id: 13, name: 'Yotoqxona', square: 20.5)

ApartmentNumber.find(18).update(square: 37.1)
RoomSquare.create(apartment_number_id: 18, name: 'Studiya Oshxona', square: 8.2)
RoomSquare.create(apartment_number_id: 18, name: 'S/U', square: 4.3)
RoomSquare.create(apartment_number_id: 18, name: 'Kirish zali', square: 8.6)
RoomSquare.create(apartment_number_id: 18, name: 'Balkon', square: 1.6)
RoomSquare.create(apartment_number_id: 18, name: 'Yotoqxona', square: 14.4)

ApartmentNumber.find(19).update(square: 65.6)
RoomSquare.create(apartment_number_id: 19, name: 'Mehmonxona', square: 16.6)
RoomSquare.create(apartment_number_id: 19, name: 'S/U', square: 3.8)
RoomSquare.create(apartment_number_id: 19, name: 'S/U', square: 2.3)
RoomSquare.create(apartment_number_id: 19, name: 'Kirish zali', square: 13.4)
RoomSquare.create(apartment_number_id: 19, name: 'Oshxona', square: 9)
RoomSquare.create(apartment_number_id: 19, name: 'Yotoqxona', square: 18.9)
RoomSquare.create(apartment_number_id: 19, name: 'Balkon', square: 1.6)

ApartmentNumber.find(23).update(square: 58.76)
RoomSquare.create(apartment_number_id: 23, name: 'Mehmonxona', square: 17.8)
RoomSquare.create(apartment_number_id: 23, name: 'S/U', square: 3.1)
RoomSquare.create(apartment_number_id: 23, name: 'S/U', square: 2.3)
RoomSquare.create(apartment_number_id: 23, name: 'Kirish zali', square: 8.5)
RoomSquare.create(apartment_number_id: 23, name: 'Oshxona', square: 10.8)
RoomSquare.create(apartment_number_id: 23, name: 'Yotoqxona', square: 15.3)
RoomSquare.create(apartment_number_id: 23, name: 'Balkon', square: 0.96)


# specific epartment numbers

first_epartment = SpecificEpartmentNumber.find_or_create_by(block_id: 2, number: 1, number_of_rooms: 2, square: 51)
RoomSquare.create(specific_epartment_number_id: first_epartment.id, name: 'Mehmonxona', square: 17.8)
RoomSquare.create(specific_epartment_number_id: first_epartment.id, name: 'Yotoqxona', square: 11.6)
RoomSquare.create(specific_epartment_number_id: first_epartment.id, name: 'S/U', square: 3.1)
RoomSquare.create(specific_epartment_number_id: first_epartment.id, name: 'S/U', square: 2.9)
RoomSquare.create(specific_epartment_number_id: first_epartment.id, name: 'Kirish zali', square: 8.5)
RoomSquare.create(specific_epartment_number_id: first_epartment.id, name: 'Oshxona', square: 7.1)

second_epartment = SpecificEpartmentNumber.find_or_create_by(block_id: 2, number: 2, number_of_rooms: 3, square: 85.5)
RoomSquare.create(specific_epartment_number_id: second_epartment.id, name: 'Mehmonxona', square: 17.6)
RoomSquare.create(specific_epartment_number_id: second_epartment.id, name: 'Yotoqxona', square: 16.6)
RoomSquare.create(specific_epartment_number_id: second_epartment.id, name: 'Yotoqxona', square: 18.9)
RoomSquare.create(specific_epartment_number_id: second_epartment.id, name: 'S/U', square: 2.9)
RoomSquare.create(specific_epartment_number_id: second_epartment.id, name: 'S/U', square: 3.8)
RoomSquare.create(specific_epartment_number_id: second_epartment.id, name: 'Kirish zali', square: 14.1)
RoomSquare.create(specific_epartment_number_id: second_epartment.id, name: 'Oshxona', square: 12.9)

third_epartment = SpecificEpartmentNumber.find_or_create_by(block_id: 2, number: 3, number_of_rooms: 2, square: 53.7)
RoomSquare.create(specific_epartment_number_id: third_epartment.id, name: 'Yotoqxona', square: 17.2)
RoomSquare.create(specific_epartment_number_id: third_epartment.id, name: 'S/U', square: 5.2)
RoomSquare.create(specific_epartment_number_id: third_epartment.id, name: 'Kirish zali', square: 7.9)
RoomSquare.create(specific_epartment_number_id: third_epartment.id, name: 'Oshxona Studiya', square: 23.4)

fourth_epartment = SpecificEpartmentNumber.find_or_create_by(block_id: 2, number: 4, number_of_rooms: 1, square: 32.6)
RoomSquare.create(specific_epartment_number_id: fourth_epartment.id, name: 'Studiya Oshxona', square: 8.2)
RoomSquare.create(specific_epartment_number_id: fourth_epartment.id, name: 'S/U', square: 4.9)
RoomSquare.create(specific_epartment_number_id: fourth_epartment.id, name: 'Kirish zali', square: 8.6)
RoomSquare.create(specific_epartment_number_id: fourth_epartment.id, name: 'Yotoqxona', square: 10.9)

fifth_epartment = SpecificEpartmentNumber.find_or_create_by(block_id: 2, number: 5, number_of_rooms: 2, square: 68.5)
RoomSquare.create(specific_epartment_number_id: fifth_epartment.id, name: 'Mehmonxona', square: 16.6)
RoomSquare.create(specific_epartment_number_id: fifth_epartment.id, name: 'S/U', square: 2.9)
RoomSquare.create(specific_epartment_number_id: fifth_epartment.id, name: 'S/U', square: 3.8)
RoomSquare.create(specific_epartment_number_id: fifth_epartment.id, name: 'Kirish zali', square: 13.4)
RoomSquare.create(specific_epartment_number_id: fifth_epartment.id, name: 'Oshxona', square: 12.9)
RoomSquare.create(specific_epartment_number_id: fifth_epartment.id, name: 'Yotoqxona', square: 18.9)

sixth_epartment = SpecificEpartmentNumber.find_or_create_by(block_id: 2, number: 6, number_of_rooms: 2, square: 50.9)
RoomSquare.create(specific_epartment_number_id: sixth_epartment.id, name: 'Mehmonxona', square: 17.8)
RoomSquare.create(specific_epartment_number_id: sixth_epartment.id, name: 'S/U', square: 2.9)
RoomSquare.create(specific_epartment_number_id: sixth_epartment.id, name: 'S/U', square: 3.1)
RoomSquare.create(specific_epartment_number_id: sixth_epartment.id, name: 'Kirish zali', square: 8.4)
RoomSquare.create(specific_epartment_number_id: sixth_epartment.id, name: 'Oshxona', square: 7.1)
RoomSquare.create(specific_epartment_number_id: sixth_epartment.id, name: 'Yotoqxona', square: 11.6)

block = Block.find(2)
apartments = block.floors.where(number: 1).take.apartments
apartments.each do |apartment|
  specific_epartment_number =
    block.specific_epartment_numbers.where(number: apartment.apartment_number.number).take
  apartment.update(specific_epartment_number: specific_epartment_number)
end



# block 4

ApartmentNumber.find(9).update(square: 58.66)
RoomSquare.create(apartment_number_id: 9, name: 'Mehmonxona', square: 17.8)
RoomSquare.create(apartment_number_id: 9, name: 'Yotoqxona', square: 15.2)
RoomSquare.create(apartment_number_id: 9, name: 'S/U', square: 3.1)
RoomSquare.create(apartment_number_id: 9, name: 'S/U', square: 2.3)
RoomSquare.create(apartment_number_id: 9, name: 'Kirish zali', square: 8.5)
RoomSquare.create(apartment_number_id: 9, name: 'Oshxona', square: 10.8)
RoomSquare.create(apartment_number_id: 9, name: 'Balkon', square: 0.96)

ApartmentNumber.find(12).update(square: 86.56)
RoomSquare.create(apartment_number_id: 12, name: 'Mehmonxona', square: 17.6)
RoomSquare.create(apartment_number_id: 12, name: 'Yotoqxona', square: 16.6)
RoomSquare.create(apartment_number_id: 12, name: 'Yotoqxona', square: 18.9)
RoomSquare.create(apartment_number_id: 12, name: 'S/U', square: 2.3)
RoomSquare.create(apartment_number_id: 12, name: 'S/U', square: 3.8)
RoomSquare.create(apartment_number_id: 12, name: 'Kirish zali', square: 14.1)
RoomSquare.create(apartment_number_id: 12, name: 'Oshxona', square: 9.0)
RoomSquare.create(apartment_number_id: 12, name: 'Balkon', square: 1.6)
RoomSquare.create(apartment_number_id: 12, name: 'Balkon', square: 1.6)

ApartmentNumber.find(15).update(square: 53.2)
RoomSquare.create(apartment_number_id: 15, name: 'S/U', square: 4.5)
RoomSquare.create(apartment_number_id: 15, name: 'Kirish zali', square: 7.9)
RoomSquare.create(apartment_number_id: 15, name: 'Oshxona Studiya', square: 17.3)
RoomSquare.create(apartment_number_id: 15, name: 'Balkon', square: 3)
RoomSquare.create(apartment_number_id: 15, name: 'Yotoqxona', square: 20.5)

ApartmentNumber.find(17).update(square: 37.1)
RoomSquare.create(apartment_number_id: 17, name: 'Studiya Oshxona', square: 8.2)
RoomSquare.create(apartment_number_id: 17, name: 'S/U', square: 4.3)
RoomSquare.create(apartment_number_id: 17, name: 'Kirish zali', square: 8.6)
RoomSquare.create(apartment_number_id: 17, name: 'Balkon', square: 1.6)
RoomSquare.create(apartment_number_id: 17, name: 'Yotoqxona', square: 14.4)

ApartmentNumber.find(21).update(square: 65.6)
RoomSquare.create(apartment_number_id: 21, name: 'Mehmonxona', square: 16.6)
RoomSquare.create(apartment_number_id: 21, name: 'S/U', square: 3.8)
RoomSquare.create(apartment_number_id: 21, name: 'S/U', square: 2.3)
RoomSquare.create(apartment_number_id: 21, name: 'Kirish zali', square: 13.4)
RoomSquare.create(apartment_number_id: 21, name: 'Oshxona', square: 9)
RoomSquare.create(apartment_number_id: 21, name: 'Yotoqxona', square: 18.9)
RoomSquare.create(apartment_number_id: 21, name: 'Balkon', square: 1.6)

ApartmentNumber.find(22).update(square: 58.76)
RoomSquare.create(apartment_number_id: 22, name: 'Mehmonxona', square: 17.8)
RoomSquare.create(apartment_number_id: 22, name: 'S/U', square: 3.1)
RoomSquare.create(apartment_number_id: 22, name: 'S/U', square: 2.3)
RoomSquare.create(apartment_number_id: 22, name: 'Kirish zali', square: 8.5)
RoomSquare.create(apartment_number_id: 22, name: 'Oshxona', square: 10.8)
RoomSquare.create(apartment_number_id: 22, name: 'Yotoqxona', square: 15.3)
RoomSquare.create(apartment_number_id: 22, name: 'Balkon', square: 0.96)


# specific epartment numbers

first_epartment = SpecificEpartmentNumber.find_or_create_by(block_id: 4, number: 1, number_of_rooms: 2, square: 51)
RoomSquare.create(specific_epartment_number_id: first_epartment.id, name: 'Mehmonxona', square: 17.8)
RoomSquare.create(specific_epartment_number_id: first_epartment.id, name: 'Yotoqxona', square: 11.6)
RoomSquare.create(specific_epartment_number_id: first_epartment.id, name: 'S/U', square: 3.1)
RoomSquare.create(specific_epartment_number_id: first_epartment.id, name: 'S/U', square: 2.9)
RoomSquare.create(specific_epartment_number_id: first_epartment.id, name: 'Kirish zali', square: 8.5)
RoomSquare.create(specific_epartment_number_id: first_epartment.id, name: 'Oshxona', square: 7.1)

second_epartment = SpecificEpartmentNumber.find_or_create_by(block_id: 4, number: 2, number_of_rooms: 3, square: 85.5)
RoomSquare.create(specific_epartment_number_id: second_epartment.id, name: 'Mehmonxona', square: 17.6)
RoomSquare.create(specific_epartment_number_id: second_epartment.id, name: 'Yotoqxona', square: 16.6)
RoomSquare.create(specific_epartment_number_id: second_epartment.id, name: 'Yotoqxona', square: 18.9)
RoomSquare.create(specific_epartment_number_id: second_epartment.id, name: 'S/U', square: 2.9)
RoomSquare.create(specific_epartment_number_id: second_epartment.id, name: 'S/U', square: 3.8)
RoomSquare.create(specific_epartment_number_id: second_epartment.id, name: 'Kirish zali', square: 14.1)
RoomSquare.create(specific_epartment_number_id: second_epartment.id, name: 'Oshxona', square: 12.9)

third_epartment = SpecificEpartmentNumber.find_or_create_by(block_id: 4, number: 3, number_of_rooms: 2, square: 53.7)
RoomSquare.create(specific_epartment_number_id: third_epartment.id, name: 'Yotoqxona', square: 17.2)
RoomSquare.create(specific_epartment_number_id: third_epartment.id, name: 'S/U', square: 5.2)
RoomSquare.create(specific_epartment_number_id: third_epartment.id, name: 'Kirish zali', square: 7.9)
RoomSquare.create(specific_epartment_number_id: third_epartment.id, name: 'Oshxona Studiya', square: 23.4)

fourth_epartment = SpecificEpartmentNumber.find_or_create_by(block_id: 4, number: 4, number_of_rooms: 1, square: 32.6)
RoomSquare.create(specific_epartment_number_id: fourth_epartment.id, name: 'Studiya Oshxona', square: 8.2)
RoomSquare.create(specific_epartment_number_id: fourth_epartment.id, name: 'S/U', square: 4.9)
RoomSquare.create(specific_epartment_number_id: fourth_epartment.id, name: 'Kirish zali', square: 8.6)
RoomSquare.create(specific_epartment_number_id: fourth_epartment.id, name: 'Yotoqxona', square: 10.9)

fifth_epartment = SpecificEpartmentNumber.find_or_create_by(block_id: 4, number: 5, number_of_rooms: 2, square: 68.5)
RoomSquare.create(specific_epartment_number_id: fifth_epartment.id, name: 'Mehmonxona', square: 16.6)
RoomSquare.create(specific_epartment_number_id: fifth_epartment.id, name: 'S/U', square: 2.9)
RoomSquare.create(specific_epartment_number_id: fifth_epartment.id, name: 'S/U', square: 3.8)
RoomSquare.create(specific_epartment_number_id: fifth_epartment.id, name: 'Kirish zali', square: 13.4)
RoomSquare.create(specific_epartment_number_id: fifth_epartment.id, name: 'Oshxona', square: 12.9)
RoomSquare.create(specific_epartment_number_id: fifth_epartment.id, name: 'Yotoqxona', square: 18.9)

sixth_epartment = SpecificEpartmentNumber.find_or_create_by(block_id: 4, number: 6, number_of_rooms: 2, square: 50.9)
RoomSquare.create(specific_epartment_number_id: sixth_epartment.id, name: 'Mehmonxona', square: 17.8)
RoomSquare.create(specific_epartment_number_id: sixth_epartment.id, name: 'S/U', square: 2.9)
RoomSquare.create(specific_epartment_number_id: sixth_epartment.id, name: 'S/U', square: 3.1)
RoomSquare.create(specific_epartment_number_id: sixth_epartment.id, name: 'Kirish zali', square: 8.4)
RoomSquare.create(specific_epartment_number_id: sixth_epartment.id, name: 'Oshxona', square: 7.1)
RoomSquare.create(specific_epartment_number_id: sixth_epartment.id, name: 'Yotoqxona', square: 11.6)

block = Block.find(4)
apartments = block.floors.where(number: 1).take.apartments
apartments.each do |apartment|
  specific_epartment_number =
    block.specific_epartment_numbers.where(number: apartment.apartment_number.number).take
  apartment.update(specific_epartment_number: specific_epartment_number)
end

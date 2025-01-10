User.create(name: 'admin', email: 'admin@gmail.com', password: 111111, role: 1)
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

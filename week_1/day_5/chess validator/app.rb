# app.rb

require_relative("rook/rook.rb")
require_relative("king/king.rb")
require_relative("knight/knight.rb")
require_relative("bishop/bishop.rb")
require_relative("queen/queen.rb")
require_relative("pawn/pawn.rb")

black_rook_left = Rook.new(1, 8, "black")
white_rook_right = Rook.new(8, 1, "white")

black_king = King.new(1, 5, "black")
white_king = King.new(8, 5, "white")

# black_knight = Knight.new(1, 2, "black")
white_knight = Knight.new(4, 4, "white")

white_bishop = Bishop.new(2, 4, "white")

white_queen = Queen.new(3, 4, "white")

black_pawn = Black_Pawn.new(5, 7, "black")
white_pawn = White_Pawn.new(5, 2, "white")


puts "Valid Rook movements"
puts "--------------------"

p black_rook_left.can_move?(1, 5) == "yes"
p black_rook_left.can_move?(5, 8) == "yes"
p white_rook_right.can_move?(8, 3) == "yes"
p white_rook_right.can_move?(2, 1) == "yes"

puts ""
puts "Invalid Rook movements"
puts "----------------------"

p black_rook_left.can_move?(2, 7) == "no"
p black_rook_left.can_move?(2, 5) == "no"
p white_rook_right.can_move?(3, 5) == "no"
p white_rook_right.can_move?(5, 6) == "no"

puts ""
puts "Valid King movements"
puts "--------------------"

p black_king.can_move?(1, 4) == "yes"
p black_king.can_move?(1, 6) == "yes"
p black_king.can_move?(2, 5) == "yes"
p white_king.can_move?(8, 4) == "yes"
p white_king.can_move?(7, 6) == "yes"
p white_king.can_move?(7, 4) == "yes"

puts ""
puts "Invalid King movements"
puts "----------------------"

p black_king.can_move?(1, 3) == "no"
p black_king.can_move?(1, 7) == "no"
p black_king.can_move?(3, 5) == "no"
p white_king.can_move?(8, 3) == "no"
p white_king.can_move?(8, 7) == "no"
p white_king.can_move?(6, 5) == "no"

puts ""
puts "Valid Knight movements"
puts "--------------------"

p white_knight.can_move?(2, 5) == "yes"
p white_knight.can_move?(5, 2) == "yes"
p white_knight.can_move?(6, 5) == "yes"

puts ""
puts "Invalid Knight movements"
puts "--------------------"

p white_knight.can_move?(6, 6) == "no"
p white_knight.can_move?(5, 5) == "no"
p white_knight.can_move?(1, 5) == "no"

puts ""
puts "Valid bishop movements"
puts "--------------------"

p white_bishop.can_move?(4, 6) == "yes"
p white_bishop.can_move?(5, 7) == "yes"
p white_bishop.can_move?(3, 3) == "yes"

puts ""
puts "Invalid bishop movements"
puts "--------------------"

p white_bishop.can_move?(3, 1) == "no"
p white_bishop.can_move?(4, 5) == "no"
p white_bishop.can_move?(6, 7) == "no"

puts ""
puts "Valid queen movements"
puts "--------------------"

p white_queen.can_move?(5, 2) == "yes"
p white_queen.can_move?(7, 8) == "yes"
p white_queen.can_move?(6, 4) == "yes"
p white_queen.can_move?(3, 8) == "yes"

puts ""
puts "Invalid queen movements"
puts "--------------------"

p white_queen.can_move?(1, 5) == "no"
p white_queen.can_move?(5, 5) == "no"
p white_queen.can_move?(8, 7) == "no"
p white_queen.can_move?(6, 2) == "no"

puts ""
puts "Valid pawn movements"
puts "----------------------"

p black_pawn.can_move?(5, 6, true) == "yes"
p black_pawn.can_move?(5, 5, true) == "yes"
p white_pawn.can_move?(5, 3, true) == "yes"
p white_pawn.can_move?(5, 4, true) == "yes"

puts ""
puts "Invalid pawn Movements"
puts "----------------------"

p black_pawn.can_move?(5, 1, false) == "no"
p black_pawn.can_move?(5, 5, false) == "no"
p black_pawn.can_move?(5, 8, false) == "no"
p black_pawn.can_move?(6, 8, false) == "no"
p black_pawn.can_move?(4, 7, false) == "no"
p black_pawn.can_move?(8, 2, false) == "no"
p white_pawn.can_move?(1, 7, false) == "no"
p white_pawn.can_move?(6, 6, false) == "no"
p white_pawn.can_move?(3, 8, false) == "no"
p white_pawn.can_move?(7, 3, false) == "no"
p white_pawn.can_move?(6, 1, false) == "no"

def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end


def input_to_index(user_input)
  user_input.to_i - 1
end

def position_taken?(board, index)
  if board[index] != " " || board[index] != ""
    true
  end
end

def valid_move?(board, index)
  if if board[index] == "O" || board[index] == "X" || !index.between?(0,8) || !position_taken?(board, index)
    false
  elsif index.between?(0,8)
    true
  end
end

# def valid_move?(board, index)
#   if board[index] == "O" || board[index] == "X" || !index.between?(0, 8)
#     false
#   elsif index.between?(0, 8)
#     true
#   end
# end

def move(board, index, value = "X")
  board[index] = value
end


def turn(board)
  puts "Please enter 1-9:" #ask the user for the spot they wanna move to
  user_input = gets.strip.to_i
  index = input_to_index(user_input)

  if valid_move?(board, index)
    move(board, index)
    display_board(board)
  else
    puts "Invalid move"
    turn(board)
  end
end

# def play_game(board)
#   9.times do
#     turn(board)
#   end
# end

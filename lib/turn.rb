def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def valid_move?(board, index)
  if (not position_taken?(board,index)) && index.between?(0,8)
    return true
  else
    return false
  end
end

def position_taken?(board, index)
  if board[index] == " " or board[index] == "" or board[index] == nil
    return false
  elsif board[index] == "X" or board[index] == "O"
    return true
  end
end

def move(board, index, token = "X")
  board[index] = token
end

def input_to_index(user_input)
  user_input.to_i - 1
end

def turn(board)
  puts "Please enter a number 1-9:"
  input = gets.strip
  index = input_to_index(input)
  # until valid_move?(board, index)
  #   turn(board)
  # end
end

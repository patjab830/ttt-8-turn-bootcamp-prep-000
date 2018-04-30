def display_board(board = [" ", " ", " ", " ", " ", " ", " ", " ", " "])
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def input_to_index(inp)
  inp-1
end

def valid_move?(board, index)
  if position_taken?(board, index)
    false
  elsif index > 8 || index < 0 
    false
  else
    true
  end
end

def position_taken?(board, index)
  if (board[index] == "X" || board[index] == "O")
    true
  elsif (board[index] == "" || board[index] == " " || board[index] == nil)
    false
  end
end

def move(board, index, character = "X")
  board[index] = character
end
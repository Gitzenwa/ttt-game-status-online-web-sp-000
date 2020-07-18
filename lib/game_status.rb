# Helper Method
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

# Define your WIN_COMBINATIONS constant

WIN_COMBINATIONS = [
  [0,1,2], # Top row
  [3,4,5],  # Middle row
  [6,7,8], # Bottom Row
  [0,3,6], # Left columns
  [1,4,7], # Middle column
  [2,5,8], # Right coulum
  [0,4,8], # left diagonal
  [2,4,6], # right diagonal
]
def won?(board)
  WIN_COMBINATIONS.detect do |combo|
    board[combo[0]] == board[combo[1]] &&
    board[combo[1]] == board[combo[2]] &&
    position_taken?(board, combo[0])
  end
end

def full?(board)
  board.all? {|index| index = position_taken?(board,index.to_i)}
end






  #returns falsey for an empty board, takes in board as an arguemnt, uses all  evaluates using all to see if the position is taken
  #if board.all?{|index| position_taken?(board, index.to_i)}
  #returns falsey for a draw, determine all the positions are taken, iteraate over the values, search the WIN_COMBINATIONS array for
#elsif board.none?{|index| }
  #return false if no win combinations
  #return winning combination as an array

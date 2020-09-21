def position_taken?(board, index) 
  if board[index] == "X" || board[index] == "O"
    true
  else
    false
  end
end

WIN_COMBINATIONS = [
  [0,1,2],
  [3,4,5],
  [6,7,8],
  [0,3,6],
  [1,4,7],
  [2,5,8],
  [0,4,8],
  [2,4,6],
  ]
  
def won?(board)
  #accepts board, returns FALSE if NO WIN combination, RETURN WIN COMBO if WON
  WIN_COMBINATIONS.each do |win_combination|
    #puts win_combination.inspect
    win_index_1 = win_combination[0]
    win_index_2 = win_combination[1]
    win_index_3 = win_combination[2]
    
    position_1 = board[win_index_1] # load the value of the board at win_index_1
    position_2 = board[win_index_2] # load the value of the board at win_index_2
    position_3 = board[win_index_3] # load the value of the board at win_index_3    

    if position_1 == position_2 && position_2 == position_3 && position_taken?(board, win_index_1)
     return win_combination
    end
  end
  false
end


def full?(board)
#returns false for an in-progress game 
  i = 0
  while i <= 8
        if board[i] == "X" || board[i] == "O"
          true
        else
          return false
        end
        i = i + 1
  end
  #returns true for a draw (FAILED - 1)
  if true
    !won?(board)
  end
end

#DRAW accepts a board 
#returns true if the board has not been won but is full (TRUE if DRAW)
#false if the board is not won and the board is not full (FALSE if NO win && not yet finished)
#false if the board is won. (FALSE if WON)

def draw?(board)
      if full?(board) == true
        puts "true A"
        true
      elsif won?(board) == false
        puts "false B"
        false
      elsif
          WIN_COMBINATIONS.each do |win_combination|
          #puts win_combination.inspect
          win_index_1 = win_combination[0]
          win_index_2 = win_combination[1]
          win_index_3 = win_combination[2]
          
          position_1 = board[win_index_1] # load the value of the board at win_index_1
          position_2 = board[win_index_2] # load the value of the board at win_index_2
          position_3 = board[win_index_3] # load the value of the board at win_index_3    
    
            if position_1 == position_2 && position_2 == position_3 && position_taken?(board, win_index_1)
              puts "false C"
             return false
            end
      end
    end
end

board = ["X", "O", "X", "O", "X", "X", "O", "X", "O"]   #draw

draw?(board)

=begin
def over?(board)
end

def winner(board)
end
=end
require 'pry'

#Your Luhn Algorithm Here
#define method to take in a card_number as an arguement
def valid?(card_number)
  #Set variable that stands as index #
  index = 0
  #Set sum at 0 and will eventaully increment throughout each cycle of loop
  sum = 0
  
  #Reverse string card number and turn it into an array
  numbers_array = card_number.reverse.split("")
  #binding.pry
  
  #Iterate through each number in the array
  numbers_array.each do |num|
    #convert each num into an integer
    integer = num.to_i
    
    #if the index of the number is odd than multiply it by two and reset integer
    if index.odd?
    integer *= 2
    end
    
    #if the reset integer is larger than 10 reset integer value to the sum of both digits
    if integer >= 10
      integer = 1 + (integer - 10)
    end
    
    #add the current integer value to the sum
    sum += integer
    #increment the index by 1
    index += 1
  end
  
  #if the sum's remainder = 0, the card is valid
  if sum % 10 == 0 
    puts "The card is valid!!!"
  else
    puts "Sorry your card is invalid."
  end
end

valid?("5541808923795241")
valid?("5541801923795240")





"____"
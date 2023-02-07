# frozen_string_literal: true

# Part 1

def sum(arr)
  # YOUR CODE HERE
  # Learned about blocks in Ruby from: "https://zetcode.com/lang/rubytutorial/arrays/"
  sum = 0
  arr.each do |num|
    sum = sum + num
    # puts num
  end
  # puts "Sum: #{sum}"
  return sum
end

######################################

def max_2_sum(arr)
  # YOUR CODE HERE
  firstHighestNum = arr.min()
  secondHighestNum = arr.min()
  counter = 0
  if arr.empty?
    return 0
  end
  if arr[1] == nil
    return arr[0]
  end
  arr.each do |num|
    if num > firstHighestNum
      firstHighestNum = num
    end
  #   # else
  #   #   puts "Attempting next number for \"First Highest Number\""
  #   # end
  end
  arr.each do |num|
    if (num == firstHighestNum && counter == 0)
      firstHighestNum = num
      counter = 1
    elsif num > secondHighestNum
      secondHighestNum = num
    end
    # else
    #   puts "Attempting next number for \"Second Highest Number\""
    # end
  end
  # puts "\n"
  # puts "First: #{firstHighestNum}"
  # puts "First: #{secondHighestNum}"
  # puts "\n"
  return firstHighestNum + secondHighestNum
end

######################################

def sum_to_n?(arr, number)
  # YOUR CODE HERE
  counter = 0
  counter2 = 0
  checker = 0
  arrLength = arr.length()
  if arr.empty?
    return false
  end
  if arr[1] == nil
    return false
  end
  arr.each do |num|
    arr.each do |num|
      if counter2 != counter
        checker = arr[counter2] + arr[counter]
      end
      if checker == number
        return true
      end
      counter2 = counter2 + 1
    end
    if checker == number
      return true
    end
    counter2 = 0
    counter = counter + 1
  end
  return false
end

######################################################################
# Part 2

def hello(name)
  # YOUR CODE HERE
  # if name == nil
  #   return false
  # end
  return "Hello, " + name
end

######################################

def starts_with_consonant?(string)
  # YOUR CODE HERE
  if string == nil or string == ""
    return false
  end
  lowerCasedString = string.downcase
  if lowerCasedString[0] == "a" or lowerCasedString[0] == "e" or lowerCasedString[0] == "i" or lowerCasedString[0] == "o" or lowerCasedString[0] == "u"
      return false
  elsif lowerCasedString[0] == "q" or lowerCasedString[0] == "w" or lowerCasedString[0] == "r" or lowerCasedString[0] == "t" or lowerCasedString[0] == "y" or lowerCasedString[0] == "p" or lowerCasedString[0] == "s" or lowerCasedString[0] == "d" or lowerCasedString[0] == "f" or lowerCasedString[0] == "g" or lowerCasedString[0] == "h" or lowerCasedString[0] == "j" or lowerCasedString[0] == "k" or lowerCasedString[0] == "l" or lowerCasedString[0] == "z" or lowerCasedString[0] == "x" or lowerCasedString[0] == "c" or lowerCasedString[0] == "v" or lowerCasedString[0] == "b" or lowerCasedString[0] == "n" or lowerCasedString[0] == "m"
    return true
  else
    return false
  end
end

######################################

def binary_multiple_of_4?(string)
  # YOUR CODE HERE
  # stringChecker = string.class
  
  # if string.is_a?(Integer)
  #   if string.to_i(2) % 4 == 0
  #     puts "toI: #{string.to_i(2)}"
  #     return true
  #   end
  # else
  #   return false
  # end
  
  
  results = false
  answer = string.to_i(2)
  # puts "This is the answer: "
  # puts answer
  
  if string.empty? or string =~ /[a-zA-Z]/
    return results
  end    
  if answer % 4 == 0
    results = true
  end
  return results
end


######################################################################
# Part 3

# Object representing a book
class BookInStock
  # YOUR CODE HERE
  def initialize(isbn,price)
    if(price <= 0 or isbn.empty?)
      raise ArgumentError, "Err: price <= 0 OR isbn is an empty string!"
    end
    @isbn = isbn
    @price = price
  end
  
  def isbn() #getter
    @isbn
  end
  
  def isbn=(newIsbn)
    @isbn = newIsbn
  end
  
  def price() #getter
    @price
  end
  
  def price=(newPrice)
    @price = newPrice
  end
  
  def price_as_string()
    # roundedPrice = @price.round(2)
    roundedPrice = "%.2f" % @price # Found equation at: https://www.programming-idioms.org/idiom/23/convert-real-number-to-string-with-2-decimal-places/873/ruby
    return "$#{roundedPrice}"
  end
  
  
  
end

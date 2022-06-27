class MyExamplesController < ApplicationController

  def fortune_method
    fortunes = [ "You will be Thane of Cawdor", "You will be King", "Banquo's children will be kings", "Your difficult path will be rewarding", "Don't eat the brown acid" ]
    render json: {fortune: "#{fortunes.sample}"}
  end

  def random_numbers
    numbers = []
    6.times do
      x = 1
      while x == 1
        number = rand(1..60)
        unless numbers.include?(number)
          numbers << number
          x = 0
        end
      end
    end
    numbers = numbers.join(" ")
    render html: "Lotto numbers: #{numbers}"
  end

  def number_of_visits
    count = 0
    count += 1
    render json: { count: count }
  end

  def bottles
    x = 99
    lyrics = []
    while x >= 0
      if x > 2
        lyrics << "#{x} bottles of beer on the wall, #{x} bottles of beer.\nTake one down and pass it around, #{x - 1} bottles of beer on the wall.\n\n"
      elsif x == 2
        lyrics << "#{x} bottles of beer on the wall, #{x} bottles of beer.\nTake one down and pass it around, #{x - 1} bottle of beer on the wall.\n\n"
      elsif x == 1
        lyrics << "#{x} bottle of beer on the wall, #{x} bottle of beer.\nTake one down and pass it around, no more bottles of beer on the wall.\n\n"
      else
        lyrics << "No more bottles of beer on the wall, no more bottles of beer.\nGo to the store and buy some more, 99 bottles of beer on the wall."
      end
      x = x - 1
    end
    render html: "#{lyrics.join}"
  end

end

class Bottles
  def verse(number)
    case number
    when 1
      single_verse
    when 2
      two_verse(number)
    when 0
      zero_verse
    else
      multiple_verse(number)
    end
  end

  def song
    verses(99, 0)
  end

  def single_verse
    "1 bottle of beer on the wall, 1 bottle of beer.\n" \
      "Take it down and pass it around, no more bottles of beer on the wall.\n"
  end

  def zero_verse
    "No more bottles of beer on the wall, no more bottles of beer.\n" \
      "Go to the store and buy some more, 99 bottles of beer on the wall.\n"
  end

  def two_verse(number)
    "#{number} bottles of beer on the wall, #{number} bottles of beer.\n" \
      "Take one down and pass it around, #{number - 1} bottle of beer on the wall.\n"
  end

  def multiple_verse(number)
    "#{number} bottles of beer on the wall, #{number} bottles of beer.\n" \
      "Take one down and pass it around, #{number - 1} bottles of beer on the wall.\n"
  end

  def verses(hi, lo)
    hi.downto(lo).map { |n| verse(n) }.join("\n")
  end
end

class Exercise

  # Assume that "str" is a sequence of words separated by spaces.
  # Return a string in which every word in "str" that exceeds 4 characters is replaced with "marklar".
  # If the word being replaced has a capital first letter, it should instead be replaced with "Marklar".
  def self.marklar(str)
    arr = str.split
    arr.each do |i|
      if i =~ /([[:punct:]\s])/ && i.length > 5
        if i[0].upcase == i[0]
          i.sub! i, "Marklar#{i[i.length-1]}"
        else
          i.sub! i, "marklar#{i[i.length-1]}"
        end     
      elsif i.length > 4
        if i[0].upcase == i[0]
          i.sub! i, "Marklar"
        else
          i.sub! i, "marklar"
        end
      end
    end
    p arr.join(" ")
  end

  # Return the sum of all even numbers in the Fibonacci sequence, up to
  # the "nth" term in the sequence
  # eg. the Fibonacci sequence up to 6 terms is (1, 1, 2, 3, 5, 8),
  # and the sum of its even numbers is (2 + 8) = 10
  def self.even_fibonacci(nth)
    fibonacci_sequence = [1]
    sequence_number = 1
    result = 0
    
    i = 1
    while i < nth
      fibonacci_sequence.push(sequence_number)
      sequence_number += fibonacci_sequence[i-1]
      i += 1
    end
    even_sequence = fibonacci_sequence.select { |x| x.even? }
    even_sequence.each { |x| result += x }
    p result 
  end
end
class WordFormatter


  def upcase(input)
    input.upcase
  end

  def camelcase(input)
    input.split.map{|word| word.capitalize}.join('')
  end

end
class Quote
  
  def initialize
    @filename = './resources/quotes.txt'
    @counter = 0    
  end

  def take_quote
    increment_counter

    index = 1
    File.readlines(@filename).each do |line|
      return line if @counter == index

      index += 1
    end
  end

  def increment_counter
    count = File.foreach(@filename).inject(0) { |c, _line| c + 1 }

    if count <= @counter
      @counter = 1
    else
      @counter += 1
    end
  end

  def tweet_quote(client)
    quote = take_quote
    client.update(quote)
  end
end

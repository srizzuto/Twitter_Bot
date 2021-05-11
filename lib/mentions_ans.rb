class Answers
  def initialize
    @user = '@BotTeiro'
    @filename = './resources/bot_answers.txt'
  end

  def find_mentions(client)
    client.search(@user, result_type: 'recent').take(1).each do |tweet|
      reply = get_reply(tweet.text)
      client.update("@#{tweet.user.screen_name} #{reply}", in_reply_to_status_id: tweet.id)
    end
  end

  def get_reply(tweet)
    count = File.foreach(@filename).inject(0) { |c, _line| c + 1 }
    return read_line(1) if tweet.include? 'How are you'
    return read_line(2) if tweet.include? '?'
    return read_line(4) if tweet.include? 'Hello'
    return read_line(5) if tweet.include? 'bye'
    return read_line(6) if tweet.include? 'thank you'

    read_line(count)
  end

  def read_line(line_num)
    index = 1
    File.readlines(@filename).each do |line|
      return line if line_num == index

      index += 1
    end
  end
end

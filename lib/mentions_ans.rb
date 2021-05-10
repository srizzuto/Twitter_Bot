class Answers

  @@user = "@BotTeiro"
  @@filename = './resources/bot_answers.txt'

  def find_mentions(client)
    client.search(@@user, result_type: "recent").take(1).each do |tweet| 
      reply = get_reply(tweet.text)
      client.update("@#{tweet.user.screen_name} #{reply}", in_reply_to_status_id: tweet.id)
    end
  end

  def get_reply(tweet)
    count = File.foreach(@@filename).inject(0) {|c, line| c+1}
    if tweet.include? "How are you"
      return get_line(1)
    end
    if tweet.include? "?"
      return get_line(2)
    end
    if tweet.include? "haha" || "lol" || "funny"
      return get_line(3)
    end
    if tweet.include? "Hello"
      return get_line(4)
    end
    if tweet.include? "bye"
      return get_line(5)
    end
    if tweet.include? "thank you"
      return get_line(6)
    end
    return get_line(count)
  end

  def get_line(line_num)
    index = 1
    File.readlines(@@filename).each do |line|
      return line if line_num == index
      index += 1
    end
  end
end
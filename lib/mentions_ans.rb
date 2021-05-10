# rubocop: disable Metrics/CyclomaticComplexity, Metrics/PerceivedComplexity, Style/ClassVars

class Answers
  @@user = '@BotTeiro'
  @@filename = './resources/bot_answers.txt'

  def find_mentions(client)
    client.search(@@user, result_type: 'recent').take(1).each do |tweet|
      reply = get_reply(tweet.text)
      client.update("@#{tweet.user.screen_name} #{reply}", in_reply_to_status_id: tweet.id)
    end
  end

  def get_reply(tweet)
    count = File.foreach(@@filename).inject(0) { |c, _line| c + 1 }
    return get_line(1) if tweet.include? 'How are you'
    return get_line(2) if tweet.include? '?'
    return get_line(3) if tweet.include?('haha' || 'lol' || 'funny')
    return get_line(4) if tweet.include? 'Hello'
    return get_line(5) if tweet.include? 'bye'
    return get_line(6) if tweet.include? 'thank you'

    get_line(count)
  end

  def get_line(line_num)
    index = 1
    File.readlines(@@filename).each do |line|
      return line if line_num == index

      index += 1
    end
  end
end

# rubocop: enable Metrics/CyclomaticComplexity, Metrics/PerceivedComplexity, Style/ClassVars

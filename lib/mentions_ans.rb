class Answers

  @@user = "@BotTeiro"

  def find_mentions
      found = client.search(@@user)
      print found
  end

end
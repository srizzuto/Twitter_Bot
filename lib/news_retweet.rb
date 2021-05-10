class News

  def news_retweet(client, hashtag, n_retweets)
    latest_tweets = client.search(hashtag, lang:"en").take(n_retweets)
    client.retweet latest_tweets
  end
end
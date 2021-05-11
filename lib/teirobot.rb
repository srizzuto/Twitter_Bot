require 'twitter'
require_relative '../lib/news_retweet'
require_relative '../lib/quotes'
require_relative '../lib/mentions_ans'

class TeiroBot
  attr_reader :client, :mentions, :quoter, :retweet

  # Put API Keys here
  CONSUMER_KEY = ''.freeze
  CONSUMER_SECRET = ''.freeze

  OA_TOKEN = ''.freeze
  OA_SECRET = ''.freeze

  def initialize
    @mentions = Answers.new
    @quoter = Quote.new
    @retweet = News.new
    @client = Twitter::REST::Client.new do |config|
      config.consumer_key = CONSUMER_KEY
      config.consumer_secret = CONSUMER_SECRET
      config.access_token = OA_TOKEN
      config.access_token_secret = OA_SECRET
    end
  end

  def do_retweet(hashtag = '#argentina', n_retweets = 1)
    h_array = hashtag.split
    h_array.each do |hash|
      @retweet.news_retweet(@client, hash, n_retweets)
    end
  end

  def do_post(n_times = 1)
    (0...n_times).each do |_n|
      @quoter.tweet_quote(@client)
    end
  end

  def answer
    @mentions.find_mentions(@client)
  end
end

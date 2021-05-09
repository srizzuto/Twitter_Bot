#!/usr/bin/env ruby

require 'twitter'
require './lib/news_retweet.rb'
require './lib/quotes.rb'
require './lib/mentions_ans.rb'

class TeiroBot

  CONSUMER_KEY = '99P4HngMjK4rml2SDLlCia2J0'.freeze
  CONSUMER_SECRET = 'A3sVY2Md5AauDIGyoOMbv3vz39l5Ng5ZTdOlL7xhrItuuFIKCR'.freeze

  OA_TOKEN = '1390355577189113857-XZxk1xCqVOGhYZC6xxsz6bGX9GcGfd'.freeze
  OA_SECRET = 'yvemotmgGQRsqfzvJU0YQbNCbtSuKuRBlgvFhCqfmqhkI'.freeze

  def initialize
    @quoter = Quote.new()
    @retweet = News.new()
    @client = Twitter::REST::Client.new do |config|
      config.consumer_key = CONSUMER_KEY
      config.consumer_secret = CONSUMER_SECRET
      config.access_token = OA_TOKEN
      config.access_token_secret = OA_SECRET
    end  
  end

  def do_retweet(hashtag = "#argentina", n_retweets = 3)
    h_array = hashtag.split(' ')
    h_array.each { |hash| @retweet.news_retweet(@client, hash, n_retweets)
    } 
  end

  def do_post(n_times = 1)
    for n in (0..n_times)
      @quoter.tweet_quote(@client)
    end
  end

  def answer

  end
end

TBot = TeiroBot.new()

while TBot do
  TBot.do_retweet("#argentina #usa #europe #asia #australia #newzeland #germany #bulgaria #rumania #rusia #argentina #spain #ecuador #colombia", 1)
  TBot.do_post
  sleep(300)
end

#!/usr/bin/env ruby

require 'twitter'
require './lib/news_retweet.rb'

#$client = nil
#$hashtag = "#argentina"

class TeiroBot
  attr_accessor :client, :hashtag
  CONSUMER_KEY = '99P4HngMjK4rml2SDLlCia2J0'.freeze
  CONSUMER_SECRET = 'A3sVY2Md5AauDIGyoOMbv3vz39l5Ng5ZTdOlL7xhrItuuFIKCR'.freeze

  OA_TOKEN = '1390355577189113857-XZxk1xCqVOGhYZC6xxsz6bGX9GcGfd'.freeze
  OA_SECRET = 'yvemotmgGQRsqfzvJU0YQbNCbtSuKuRBlgvFhCqfmqhkI'.freeze

  def initialize
    @client = Twitter::REST::Client.new do |config|
      config.consumer_key = CONSUMER_KEY
      config.consumer_secret = CONSUMER_SECRET
      config.access_token = OA_TOKEN
      config.access_token_secret = OA_SECRET
    end  
  end
end

TBot = TeiroBot.new()
News.new().news_retweet(TBot.client, "#argentina", 3)



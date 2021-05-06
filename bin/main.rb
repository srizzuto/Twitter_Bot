#!/usr/bin/env ruby

require 'twitter'

class TeiroBot

  CONSUMER_KEY = '99P4HngMjK4rml2SDLlCia2J0'
  CONSUMER_SECRET = 'A3sVY2Md5AauDIGyoOMbv3vz39l5Ng5ZTdOlL7xhrItuuFIKCR'

  OA_TOKEN = '1390355577189113857-XZxk1xCqVOGhYZC6xxsz6bGX9GcGfd'
  OA_SECRET = 'yvemotmgGQRsqfzvJU0YQbNCbtSuKuRBlgvFhCqfmqhkI'

  client = Twitter::REST::Client.new do |config|
    config.consumer_key        = CONSUMER_KEY
    config.consumer_secret     = CONSUMER_SECRET
    config.access_token        = OA_TOKEN
    config.access_token_secret = OA_SECRET
  end

  client.update("Hello everyone")

end
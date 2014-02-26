# -*- coding: utf-8 -*-
require 'bundler/setup'
require 'net/http'
require 'http-dump'

HTTPDump.enable!

Net::HTTP.start("localhost", 9292) do |http|
  response = http.post("/", "日本語の送信")
  p response
end


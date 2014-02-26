# coding: utf-8

class ServerApp
  def call(env)
    [
     200, 
     { 'Content-Type' => 'text/html; charset=UTF-8' },
     [ '日本語の応答' ]
    ]
  end
end

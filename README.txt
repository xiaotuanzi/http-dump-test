==エラーの再現用

UTF-8の文字を含むメッセージをPOST送る。
UTF-8の文字を含むメッセージをサーバから受け取る。

この通信をhttp-dumpで表示させると、Encoding::CompatibilityError が起こる。

$ rackup &
... ちょっと待つ ...
$ ruby client.rb
127.0.0.1 - - [26/Feb/2014 22:50:43] "POST / HTTP/1.1" 200 - 0.0007
/home/tanaka/http-dump-test/ruby/1.9.1/gems/http-dump-0.1.0/lib/http-dump.rb:53:in `join': incompatible character encodings: UTF-8 and ASCII-8BIT (Encoding::CompatibilityError)
        from /home/tanaka/http-dump-test/ruby/1.9.1/gems/http-dump-0.1.0/lib/http-dump.rb:53:in `format'
        from /home/tanaka/http-dump-test/ruby/1.9.1/gems/http-dump-0.1.0/lib/http-dump.rb:12:in `block in enable!'
        from /home/tanaka/http-dump-test/ruby/1.9.1/gems/webmock-1.17.3/lib/webmock/callback_registry.rb:20:in `call'
        from /home/tanaka/http-dump-test/ruby/1.9.1/gems/webmock-1.17.3/lib/webmock/callback_registry.rb:20:in `block in invoke_callbacks'
        from /home/tanaka/http-dump-test/ruby/1.9.1/gems/webmock-1.17.3/lib/webmock/callback_registry.rb:15:in `each'
        from /home/tanaka/http-dump-test/ruby/1.9.1/gems/webmock-1.17.3/lib/webmock/callback_registry.rb:15:in `invoke_callbacks'
        from /home/tanaka/http-dump-test/ruby/1.9.1/gems/webmock-1.17.3/lib/webmock/http_lib_adapters/net_http.rb:89:in `block in request'
        from /home/tanaka/http-dump-test/ruby/1.9.1/gems/webmock-1.17.3/lib/webmock/http_lib_adapters/net_http.rb:98:in `call'
        from /home/tanaka/http-dump-test/ruby/1.9.1/gems/webmock-1.17.3/lib/webmock/http_lib_adapters/net_http.rb:98:in `block in request'
        from /home/tanaka/http-dump-test/ruby/1.9.1/gems/webmock-1.17.3/lib/webmock/http_lib_adapters/net_http.rb:105:in `call'
        from /home/tanaka/http-dump-test/ruby/1.9.1/gems/webmock-1.17.3/lib/webmock/http_lib_adapters/net_http.rb:105:in `block in request'
        from /home/tanaka/http-dump-test/ruby/1.9.1/gems/webmock-1.17.3/lib/webmock/http_lib_adapters/net_http.rb:137:in `start_with_connect_without_finish'
        from /home/tanaka/http-dump-test/ruby/1.9.1/gems/webmock-1.17.3/lib/webmock/http_lib_adapters/net_http.rb:104:in `request'
        from /usr/local/rvm/rubies/ruby-1.9.3-p448/lib/ruby/1.9.1/net/http.rb:1308:in `send_entity'
        from /usr/local/rvm/rubies/ruby-1.9.3-p448/lib/ruby/1.9.1/net/http.rb:1097:in `post'
        from client.rb:9:in `block in <main>'
        from /home/tanaka/http-dump-test/ruby/1.9.1/gems/webmock-1.17.3/lib/webmock/http_lib_adapters/net_http.rb:123:in `start_without_connect'
        from /home/tanaka/http-dump-test/ruby/1.9.1/gems/webmock-1.17.3/lib/webmock/http_lib_adapters/net_http.rb:150:in `start'
        from /usr/local/rvm/rubies/ruby-1.9.3-p448/lib/ruby/1.9.1/net/http.rb:557:in `start'
        from client.rb:8:in `<main>'

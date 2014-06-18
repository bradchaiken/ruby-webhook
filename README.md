ruby-webhook
============

Simple Sinatra server to receive json from an incoming POST request (Ruby Webhook).

Dependencies:
Sinatra (gem install sinatra).

To Run:
cd my_app.rb
ruby my_app.rb

Expect:
== Sinatra/1.4.5 has taken the stage on 4567 for development with backup from Thin
Thin web server (v1.6.2 codename Doc Brown)
Maximum connections set to 1024
Listening on localhost:4567, CTRL+C to stop

To Test:
From a new terminal window:
curl -X POST -d '{"name":"foo","id":"12","subject":"my subject"}' http://0.0.0.0:4567

Expect from Sinatra server:
{"name"=>"foo", "orgid"=>"12", "subject"=>"my subject"}
127.0.0.1 - - [timestamp] "POST / HTTP/1.1" 200 - 0.0031
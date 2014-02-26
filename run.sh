#!/bin/sh

nohup rackup &
sleep 5
ruby client.rb

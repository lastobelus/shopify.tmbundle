#!/usr/bin/env ruby

require 'rubygems'
require 'shopifydev'
require "fileutils"

credentials = {
  'api_key' => "548a72656b1b6c5aab3c7dbbcce19b5d",
  'password' => "510eefd9964299c5dc95928ca0291b45",
  'secret' => "36aacb85b640bd8339901a1c4f45b327",
  'url' => "kerluke-llc6240.myshopify.com"
}

d = Shopifydev::Shop.new(credentials)
path = '/tmp/shopifydev_test'
FileUtils.mkdir_p(path)
d.template.download(path)

#!/usr/bin/env ruby

require 'rubygems'
require 'shopifydev'
require "fileutils"


d = Shopifydev::Shop.new(credentials)
path = '/tmp/shopifydev_test'
FileUtils.mkdir_p(path)
d.template.download(path)

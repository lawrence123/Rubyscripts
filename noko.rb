#! /usr/bin/env ruby

require 'nokogiri'
require 'open-uri'

doc = Nokogiri::XML(open('https://raw.githubusercontent.com/lawrence123/testfiles/master/test.xml'))

latest = doc.xpath('//latest').first

puts latest.content

#!/usr/bin/env ruby

# PRODUCTION:
# require 'phelper'

# DEV:
require_relative "../lib/phelper_init"

puts "This is as common as my basic-ass self."

if ARGV.length == 0
  PHelper::IFace.tip(:random)
else
  PHelper::IFace.tip(ARGV[0])
end

#!/usr/bin/env ruby

# PRODUCTION:
# require 'phelper'

# DEV:
require_relative "../lib/phelper_init"


if ARGV.length == 0
  puts "Welcome to phelper! I'm going to show you a random code snippet:"
  PHelper::IFace.tip(:random)
else
  puts "Welcome to phelper! Trying to load the tip hosted in #{ARGV[0]}..."
  PHelper::IFace.tip(ARGV[0])
end

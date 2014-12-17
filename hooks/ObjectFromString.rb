require 'colorize'
module Hooks
class ObjectFromString
  def self.give_tip
    puts "Language:    " + "Ruby".red
    puts "Description: " + "Convert a string that contains the name of an object (str_obj) to a literal object (lit_obj).".green
    puts "Author:      " + "github/unrar".yellow
    puts "lit_obj".red + " = " + "str_obj".red + ".split('::').inject(Object){ |o,c| o.const_get c }"
  end
end
end

module Hooks
class LoadHooks
  def self.give_tip
    puts "Language:    " + "Ruby".red
    puts "Description: " + "Load all the hooks in a folder (/../hooks), as seen in rhookable.".green
    puts "Author:      " + "github/unrar".yellow  
    puts "def self.importHooks(all = true)"
    puts "  Dir[File.dirname(__FILE__) + '" + "/../hooks".red + "/*.rb'].each { |f|"
    puts "    require f"
    puts "  }"
    puts "end"
  end
end
end

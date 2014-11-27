#!/usr/bin/env ruby

module PHelper
  # Import hooks
  class HooksManager
    def self.importHooks(all = true)
      Dir[File.dirname(__FILE__) + '/../hooks/*.rb'].each { |f|
        require f
      }
    end
    def self.testHooks
      Hooks::Hook1.say_hi
      Hooks::Hook2.say_bye
    end
  end

  # Interface
  class IFace
    def self.tip(id)
      if id == :random
        # Import hooks
        PHelper::HooksManager.importHooks(all = true)
        # Get a list of all the hooks
        hooks = Dir[File.dirname(__FILE__) + '/../hooks/*.rb']
        # Shuffle the list
        hooks = hooks.shuffle
        # Create string containing the name of the hook to be ran
        hook = "Hooks::" + File.basename(hooks[0], ".rb")
        # Create an object reference from the string
        hookable = hook.split('::').inject(Object){ |o,c| o.const_get c }
        # Give the tip (convention: Hooks::HookName.give_tip)
        hookable.give_tip
      elsif id != :random and id.empty? == false
        # Import Hooks
        PHelper::HooksManager.importHooks(all = true)

        # Check if the given hook exists
        unless File.exists? File.dirname(__FILE__) + '/../hooks/' + id + '.rb'
          puts "The hook #{id} wasn't found!"
          exit
        end

        # Run the hook
        hook = "Hooks::" + id
        # Create referenceable hook
        hookable = hook.split('::').inject(Object){ |o,c| o.const_get c }
        # Give the tip
        hookable.give_tip
      else
        puts "Syntax error: phelper tip_name"
      end
    end
  end
end

require "bundler/gem_tasks"

# Gemfury
require 'rubygems/builder'
require 'gemfury'
require 'gemfury/command'

# Override rubygem_push to push to gemfury instead when doing `rake release`
module Bundler
  class GemHelper
    def rubygem_push(path)
      ::Gemfury::Command::App.start(['push', path, '--as', 'evertrue' ])
    end
  end
end

ENV['RUBYCOCOA_ENV'] = 'test'
ENV['RUBYCOCOA_ROOT'] = File.expand_path('../../', __FILE__)

require 'rubygems'
require 'test/unit'
require 'test/spec'
require 'mocha'
require 'rucola'
require 'rucola/test_helper'
require 'rucola/test_case'

require File.expand_path('../../config/boot', __FILE__)

# We want to make sure we never call system on Kernel because we might break something
module Kernel
  def system(*)
    raise "Please stub Kernel#system methods in your tests so you don't break your system accidentally"
  end
end

# Not all OS X constants get loaded unless you require cocoa
require 'osx/cocoa'

# Some OS X clases need a runloop to function properly, let's just run one in a Thread somewhere
Thread.new { OSX.CFRunLoopRun }

# Rucola normally sets NSApp properly, but doesn't do this in tests
OSX::NSApp = OSX::NSApplication.sharedApplication

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
$:.unshift(File.expand_path('../../lib', __FILE__))

# Not all OS X constants get loaded unless you require cocoa
require 'osx/cocoa'

# Some OS X classes need a runloop to function properly, let's just run one in a Thread somewhere
Thread.new { OSX.CFRunLoopRun }

$:.unshift(File.expand_path('../ext', __FILE__))
require 'collector'

# Rucola doesn't do this in older version
OSX::NSApp = OSX::NSApplication.sharedApplication

class OSX::NSObject
  def super_init
    self
  end
end
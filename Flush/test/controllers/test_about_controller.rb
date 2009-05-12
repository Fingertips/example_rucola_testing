require File.expand_path('../../test_helper', __FILE__)

require 'obj_c_compiler'
ObjCCompiler.require('app/controllers/AboutController')

describe 'AboutController' do
  tests OSX::AboutController
  
  def after_setup
    ib_outlets :window => OSX::NSWindow.alloc.init
  end
  
  it "should initialize" do
    controller.should.be.an.instance_of OSX::AboutController
  end
  
  it "should show an about window" do
    window.expects(:makeKeyAndOrderFront)
    controller.showAbout(nil)
  end
end
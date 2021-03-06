require File.expand_path('../../test_helper', __FILE__)

require 'obj_c_compiler'
ObjCCompiler.require('app/controllers/AboutController')

describe 'AboutController' do
  tests OSX::AboutController
  
  before do
    @window = Collector.new(:makeKeyAndOrderFront)
    controller.setWindow(@window)
  end
  
  it "should initialize" do
    controller.should.be.an.instance_of OSX::AboutController
  end
  
  it "should show an about window" do
    controller.showAbout(nil)
    assert @window.received?(:makeKeyAndOrderFront)
  end
end
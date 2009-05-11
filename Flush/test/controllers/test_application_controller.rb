require File.expand_path('../../test_helper', __FILE__)

describe 'ApplicationController' do
  tests ApplicationController
  
  it "should initialize" do
    controller.should.be.an.instance_of ApplicationController
  end
  
  it "should set itself as the application delegate" do
    OSX::NSApp.expects(:delegate=).with(controller)
    controller.awakeFromNib
  end
end
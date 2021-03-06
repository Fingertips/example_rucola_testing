require File.expand_path('../../test_helper', __FILE__)

describe 'ApplicationController' do
  tests ApplicationController
  
  it "should set the maximum and minimum size of the window" do
    ib_outlets :window => OSX::NSWindow.alloc.init
    
    controller.awakeFromNib
    
    window.minSize.width.should == 215
    window.minSize.height.should == 132
    
    window.maxSize.width.should == 215
    window.maxSize.height.should == 132
  end
  
  it "should set itself as the application delegate" do
    OSX::NSApp.expects(:delegate=).with(controller)
    controller.awakeFromNib
  end
  
  it "should flush the Directory Services cache when it gets the flushCache action" do
    DSCacheUtils.expects(:flush)
    controller.flushCache(mock('Button'))
  end
end
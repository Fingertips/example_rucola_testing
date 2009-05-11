class ApplicationController < Rucola::RCController
  ib_outlet :window
  
  def awakeFromNib
    size = OSX::NSSize.new(250, 110)
    @window.setMinSize(size)
    @window.setMaxSize(size)
    
    OSX::NSApp.delegate = self
  end
  
  def flushCache(sender)
    DSCacheUtils.flush
  end
end
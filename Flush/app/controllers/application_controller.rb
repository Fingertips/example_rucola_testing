class ApplicationController < Rucola::RCController
  ib_outlet :main_window
  
  def awakeFromNib
    OSX::NSApp.delegate = self
  end
end
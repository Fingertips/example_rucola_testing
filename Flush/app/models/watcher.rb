class Watcher < OSX::NSObject
  attr_accessor :queue
  
  def init
    if super_init
      emptyQueue
      self
    end
  end
  
  def emptyQueue
    self.queue = []
  end
end
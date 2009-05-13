class Watcher < OSX::NSObject
  attr_accessor :examineQueue
  
  def init
    if super_init
      emptyQueue
      self
    end
  end
  
  def emptyQueue
    self.examineQueue = []
  end
end